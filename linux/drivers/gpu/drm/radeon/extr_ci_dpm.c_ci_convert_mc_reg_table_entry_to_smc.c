
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {size_t num_entries; int valid_flag; int last; TYPE_2__* mc_reg_table_entry; } ;
struct ci_power_info {TYPE_1__ mc_reg_table; } ;
struct TYPE_4__ {size_t const mclk_max; } ;
typedef int SMU7_Discrete_MCRegisterSet ;


 int ci_convert_mc_registers (TYPE_2__*,int *,int ,int ) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;

__attribute__((used)) static void ci_convert_mc_reg_table_entry_to_smc(struct radeon_device *rdev,
       const u32 memory_clock,
       SMU7_Discrete_MCRegisterSet *mc_reg_table_data)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 u32 i = 0;

 for(i = 0; i < pi->mc_reg_table.num_entries; i++) {
  if (memory_clock <= pi->mc_reg_table.mc_reg_table_entry[i].mclk_max)
   break;
 }

 if ((i == pi->mc_reg_table.num_entries) && (i > 0))
  --i;

 ci_convert_mc_registers(&pi->mc_reg_table.mc_reg_table_entry[i],
    mc_reg_table_data, pi->mc_reg_table.last,
    pi->mc_reg_table.valid_flag);
}
