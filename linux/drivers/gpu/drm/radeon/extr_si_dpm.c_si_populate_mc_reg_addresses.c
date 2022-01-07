
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_8__ {int last; int valid_flag; TYPE_2__* mc_reg_address; } ;
struct si_power_info {TYPE_3__ mc_reg_table; } ;
struct radeon_device {int dummy; } ;
struct TYPE_9__ {scalar_t__ last; TYPE_1__* address; } ;
struct TYPE_7__ {int s1; int s0; } ;
struct TYPE_6__ {void* s1; void* s0; } ;
typedef TYPE_4__ SMC_SIslands_MCRegisters ;


 int SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE ;
 void* cpu_to_be16 (int ) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;

__attribute__((used)) static void si_populate_mc_reg_addresses(struct radeon_device *rdev,
      SMC_SIslands_MCRegisters *mc_reg_table)
{
 struct si_power_info *si_pi = si_get_pi(rdev);
 u32 i, j;

 for (i = 0, j = 0; j < si_pi->mc_reg_table.last; j++) {
  if (si_pi->mc_reg_table.valid_flag & (1 << j)) {
   if (i >= SMC_SISLANDS_MC_REGISTER_ARRAY_SIZE)
    break;
   mc_reg_table->address[i].s0 =
    cpu_to_be16(si_pi->mc_reg_table.mc_reg_address[j].s0);
   mc_reg_table->address[i].s1 =
    cpu_to_be16(si_pi->mc_reg_table.mc_reg_address[j].s1);
   i++;
  }
 }
 mc_reg_table->last = (u8)i;
}
