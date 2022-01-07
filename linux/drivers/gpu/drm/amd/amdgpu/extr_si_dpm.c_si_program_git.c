
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int CG_GICST (int ) ;
 int CG_GICST_MASK ;
 int CG_GIT ;
 int R600_GICST_DFLT ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void si_program_git(struct amdgpu_device *adev)
{
 WREG32_P(CG_GIT, CG_GICST(R600_GICST_DFLT), ~CG_GICST_MASK);
}
