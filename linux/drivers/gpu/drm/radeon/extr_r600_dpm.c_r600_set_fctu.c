
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_FC_T ;
 int FC_TU (int ) ;
 int FC_TU_MASK ;
 int WREG32_P (int ,int ,int ) ;

void r600_set_fctu(struct radeon_device *rdev, u32 u)
{
 WREG32_P(CG_FC_T, FC_TU(u), ~FC_TU_MASK);
}
