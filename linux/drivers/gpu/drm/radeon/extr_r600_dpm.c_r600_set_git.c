
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_GICST (int ) ;
 int CG_GICST_MASK ;
 int CG_GIT ;
 int WREG32_P (int ,int ,int ) ;

void r600_set_git(struct radeon_device *rdev, u32 t)
{
 WREG32_P(CG_GIT, CG_GICST(t), ~CG_GICST_MASK);
}
