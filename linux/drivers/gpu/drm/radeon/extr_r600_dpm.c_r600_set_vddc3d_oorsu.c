
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_VDDC3D_OOR ;
 int SU (int ) ;
 int SU_MASK ;
 int WREG32_P (int ,int ,int ) ;

void r600_set_vddc3d_oorsu(struct radeon_device *rdev, u32 u)
{
 WREG32_P(CG_VDDC3D_OOR, SU(u), ~SU_MASK);
}
