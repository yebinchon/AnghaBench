
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct TYPE_4__ {size_t last; TYPE_1__* mc_reg_address; } ;
struct evergreen_power_info {TYPE_2__ mc_reg_table; } ;
struct evergreen_mc_reg_entry {int * mc_data; } ;
struct TYPE_3__ {int s1; } ;


 int RREG32 (int) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;

__attribute__((used)) static void cypress_retrieve_ac_timing_for_one_entry(struct radeon_device *rdev,
           struct evergreen_mc_reg_entry *entry)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 u32 i;

 for (i = 0; i < eg_pi->mc_reg_table.last; i++)
  entry->mc_data[i] =
   RREG32(eg_pi->mc_reg_table.mc_reg_address[i].s1 << 2);

}
