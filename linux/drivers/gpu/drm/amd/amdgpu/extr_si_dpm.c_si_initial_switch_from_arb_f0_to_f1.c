
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int MC_CG_ARB_FREQ_F0 ;
 int MC_CG_ARB_FREQ_F1 ;
 int ni_copy_and_switch_arb_sets (struct amdgpu_device*,int ,int ) ;

__attribute__((used)) static int si_initial_switch_from_arb_f0_to_f1(struct amdgpu_device *adev)
{
 return ni_copy_and_switch_arb_sets(adev, MC_CG_ARB_FREQ_F0, MC_CG_ARB_FREQ_F1);
}
