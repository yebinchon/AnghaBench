
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_VDDC3D_OOR ;
 int SDC (int ) ;
 int SDC_MASK ;
 int WREG32_P (int ,int ,int ) ;

void r600_set_vddc3d_oorsdc(struct radeon_device *rdev, u32 s)
{
 WREG32_P(CG_VDDC3D_OOR, SDC(s), ~SDC_MASK);
}
