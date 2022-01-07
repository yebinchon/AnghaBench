
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int WREG32_SMC (int ,int) ;
 int ixCG_FREQ_TRAN_VOTING_0 ;

__attribute__((used)) static void kv_program_vc(struct amdgpu_device *adev)
{
 WREG32_SMC(ixCG_FREQ_TRAN_VOTING_0, 0x3FFFC100);
}
