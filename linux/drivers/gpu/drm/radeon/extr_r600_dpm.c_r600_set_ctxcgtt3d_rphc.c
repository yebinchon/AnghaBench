
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_CTX_CGTT3D_R ;
 int PHC (int ) ;
 int PHC_MASK ;
 int WREG32_P (int ,int ,int ) ;

void r600_set_ctxcgtt3d_rphc(struct radeon_device *rdev, u32 p)
{
 WREG32_P(CG_CTX_CGTT3D_R, PHC(p), ~PHC_MASK);
}
