
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_SSP ;
 int CG_SSTU (int ) ;
 int CG_SSTU_MASK ;
 int WREG32_P (int ,int ,int ) ;

void r600_set_sstu(struct radeon_device *rdev, u32 u)
{
 WREG32_P(CG_SSP, CG_SSTU(u), ~CG_SSTU_MASK);
}
