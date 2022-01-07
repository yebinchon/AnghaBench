
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_table_context {int table_count; struct smu_table* tables; } ;
struct smu_table {void* cpu_addr; int size; int mc_address; } ;
struct smu_context {struct amdgpu_device* adev; struct smu_table_context smu_table; } ;
struct amdgpu_device {TYPE_1__* nbio_funcs; } ;
typedef enum smu_table_id { ____Placeholder_smu_table_id } smu_table_id ;
struct TYPE_2__ {int (* hdp_flush ) (struct amdgpu_device*,int *) ;} ;


 int EINVAL ;
 int SMU_MSG_SetDriverDramAddrHigh ;
 int SMU_MSG_SetDriverDramAddrLow ;
 int SMU_MSG_TransferTableDram2Smu ;
 int SMU_MSG_TransferTableSmu2Dram ;
 int lower_32_bits (int ) ;
 int memcpy (void*,void*,int ) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;
 int smu_table_get_index (struct smu_context*,int) ;
 int stub1 (struct amdgpu_device*,int *) ;
 int upper_32_bits (int ) ;

int smu_update_table(struct smu_context *smu, enum smu_table_id table_index, int argument,
       void *table_data, bool drv2smu)
{
 struct smu_table_context *smu_table = &smu->smu_table;
 struct amdgpu_device *adev = smu->adev;
 struct smu_table *table = ((void*)0);
 int ret = 0;
 int table_id = smu_table_get_index(smu, table_index);

 if (!table_data || table_id >= smu_table->table_count || table_id < 0)
  return -EINVAL;

 table = &smu_table->tables[table_index];

 if (drv2smu)
  memcpy(table->cpu_addr, table_data, table->size);

 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_SetDriverDramAddrHigh,
       upper_32_bits(table->mc_address));
 if (ret)
  return ret;
 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_SetDriverDramAddrLow,
       lower_32_bits(table->mc_address));
 if (ret)
  return ret;
 ret = smu_send_smc_msg_with_param(smu, drv2smu ?
       SMU_MSG_TransferTableDram2Smu :
       SMU_MSG_TransferTableSmu2Dram,
       table_id | ((argument & 0xFFFF) << 16));
 if (ret)
  return ret;


 adev->nbio_funcs->hdp_flush(adev, ((void*)0));

 if (!drv2smu)
  memcpy(table_data, table->cpu_addr, table->size);

 return ret;
}
