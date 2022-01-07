
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct si_dte_data {scalar_t__ k; scalar_t__ tdep_count; scalar_t__ t0; scalar_t__ max_t; scalar_t__ t_threshold; scalar_t__* tau; scalar_t__* r; scalar_t__* tdep_tau; scalar_t__* tdep_r; int * t_limits; int dte_mode; int temp_select; int window_size; } ;
struct si_power_info {int enable_dte; int sram_end; int dte_table_start; struct si_dte_data dte_data; } ;
struct radeon_device {int dummy; } ;
struct TYPE_4__ {void** Tdep_R; void** Tdep_tau; int * T_limits; scalar_t__ Tdep_count; void** R; void** tau; void* Tthreshold; int DTE_mode; int temp_select; int WindowSize; void* MaxT; void* T0; void* K; } ;
typedef TYPE_1__ Smc_SIslands_DTE_Configuration ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SMC_SISLANDS_DTE_MAX_FILTER_STAGES ;
 scalar_t__ SMC_SISLANDS_DTE_MAX_TEMPERATURE_DEPENDENT_ARRAY_SIZE ;
 void* cpu_to_be32 (scalar_t__) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int si_copy_bytes_to_smc (struct radeon_device*,int ,scalar_t__*,int,int ) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;

__attribute__((used)) static int si_initialize_smc_dte_tables(struct radeon_device *rdev)
{
 struct si_power_info *si_pi = si_get_pi(rdev);
 int ret = 0;
 struct si_dte_data *dte_data = &si_pi->dte_data;
 Smc_SIslands_DTE_Configuration *dte_tables = ((void*)0);
 u32 table_size;
 u8 tdep_count;
 u32 i;

 if (dte_data == ((void*)0))
  si_pi->enable_dte = 0;

 if (si_pi->enable_dte == 0)
  return 0;

 if (dte_data->k <= 0)
  return -EINVAL;

 dte_tables = kzalloc(sizeof(Smc_SIslands_DTE_Configuration), GFP_KERNEL);
 if (dte_tables == ((void*)0)) {
  si_pi->enable_dte = 0;
  return -ENOMEM;
 }

 table_size = dte_data->k;

 if (table_size > SMC_SISLANDS_DTE_MAX_FILTER_STAGES)
  table_size = SMC_SISLANDS_DTE_MAX_FILTER_STAGES;

 tdep_count = dte_data->tdep_count;
 if (tdep_count > SMC_SISLANDS_DTE_MAX_TEMPERATURE_DEPENDENT_ARRAY_SIZE)
  tdep_count = SMC_SISLANDS_DTE_MAX_TEMPERATURE_DEPENDENT_ARRAY_SIZE;

 dte_tables->K = cpu_to_be32(table_size);
 dte_tables->T0 = cpu_to_be32(dte_data->t0);
 dte_tables->MaxT = cpu_to_be32(dte_data->max_t);
 dte_tables->WindowSize = dte_data->window_size;
 dte_tables->temp_select = dte_data->temp_select;
 dte_tables->DTE_mode = dte_data->dte_mode;
 dte_tables->Tthreshold = cpu_to_be32(dte_data->t_threshold);

 if (tdep_count > 0)
  table_size--;

 for (i = 0; i < table_size; i++) {
  dte_tables->tau[i] = cpu_to_be32(dte_data->tau[i]);
  dte_tables->R[i] = cpu_to_be32(dte_data->r[i]);
 }

 dte_tables->Tdep_count = tdep_count;

 for (i = 0; i < (u32)tdep_count; i++) {
  dte_tables->T_limits[i] = dte_data->t_limits[i];
  dte_tables->Tdep_tau[i] = cpu_to_be32(dte_data->tdep_tau[i]);
  dte_tables->Tdep_R[i] = cpu_to_be32(dte_data->tdep_r[i]);
 }

 ret = si_copy_bytes_to_smc(rdev, si_pi->dte_table_start, (u8 *)dte_tables,
       sizeof(Smc_SIslands_DTE_Configuration), si_pi->sram_end);
 kfree(dte_tables);

 return ret;
}
