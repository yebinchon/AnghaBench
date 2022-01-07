
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int R600_CTXCGTT3DRPHC_DFLT ;
 int R600_CTXCGTT3DRSDC_DFLT ;
 int R600_VDDC3DOORPHC_DFLT ;
 int R600_VDDC3DOORSDC_DFLT ;
 int R600_VDDC3DOORSU_DFLT ;
 int r600_set_ctxcgtt3d_rphc (struct radeon_device*,int ) ;
 int r600_set_ctxcgtt3d_rsdc (struct radeon_device*,int ) ;
 int r600_set_vddc3d_oorphc (struct radeon_device*,int ) ;
 int r600_set_vddc3d_oorsdc (struct radeon_device*,int ) ;
 int r600_set_vddc3d_oorsu (struct radeon_device*,int ) ;

__attribute__((used)) static void rv6xx_program_vddc3d_parameters(struct radeon_device *rdev)
{
 r600_set_vddc3d_oorsu(rdev, R600_VDDC3DOORSU_DFLT);
 r600_set_vddc3d_oorphc(rdev, R600_VDDC3DOORPHC_DFLT);
 r600_set_vddc3d_oorsdc(rdev, R600_VDDC3DOORSDC_DFLT);
 r600_set_ctxcgtt3d_rphc(rdev, R600_CTXCGTT3DRPHC_DFLT);
 r600_set_ctxcgtt3d_rsdc(rdev, R600_CTXCGTT3DRSDC_DFLT);
}
