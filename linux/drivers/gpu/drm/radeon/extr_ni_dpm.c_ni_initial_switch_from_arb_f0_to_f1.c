
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int MC_CG_ARB_FREQ_F0 ;
 int MC_CG_ARB_FREQ_F1 ;
 int ni_copy_and_switch_arb_sets (struct radeon_device*,int ,int ) ;

__attribute__((used)) static int ni_initial_switch_from_arb_f0_to_f1(struct radeon_device *rdev)
{
 return ni_copy_and_switch_arb_sets(rdev, MC_CG_ARB_FREQ_F0, MC_CG_ARB_FREQ_F1);
}
