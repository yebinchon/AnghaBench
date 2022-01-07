
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_FC_T ;
 int FC_T (int ) ;
 int FC_T_MASK ;
 int WREG32_P (int ,int ,int ) ;

void r600_set_fct(struct radeon_device *rdev, u32 t)
{
 WREG32_P(CG_FC_T, FC_T(t), ~FC_T_MASK);
}
