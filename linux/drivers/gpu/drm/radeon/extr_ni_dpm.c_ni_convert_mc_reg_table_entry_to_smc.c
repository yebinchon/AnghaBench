
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct rv7xx_pl {scalar_t__ mclk; } ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {size_t num_entries; int valid_flag; int last; TYPE_2__* mc_reg_table_entry; } ;
struct ni_power_info {TYPE_1__ mc_reg_table; } ;
struct TYPE_4__ {scalar_t__ mclk_max; } ;
typedef int SMC_NIslands_MCRegisterSet ;


 int ni_convert_mc_registers (TYPE_2__*,int *,int ,int ) ;
 struct ni_power_info* ni_get_pi (struct radeon_device*) ;

__attribute__((used)) static void ni_convert_mc_reg_table_entry_to_smc(struct radeon_device *rdev,
       struct rv7xx_pl *pl,
       SMC_NIslands_MCRegisterSet *mc_reg_table_data)
{
 struct ni_power_info *ni_pi = ni_get_pi(rdev);
 u32 i = 0;

 for (i = 0; i < ni_pi->mc_reg_table.num_entries; i++) {
  if (pl->mclk <= ni_pi->mc_reg_table.mc_reg_table_entry[i].mclk_max)
   break;
 }

 if ((i == ni_pi->mc_reg_table.num_entries) && (i > 0))
  --i;

 ni_convert_mc_registers(&ni_pi->mc_reg_table.mc_reg_table_entry[i],
    mc_reg_table_data,
    ni_pi->mc_reg_table.last,
    ni_pi->mc_reg_table.valid_flag);
}
