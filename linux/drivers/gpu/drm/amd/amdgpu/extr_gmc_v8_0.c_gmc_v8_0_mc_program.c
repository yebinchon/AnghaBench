
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int vram_start; int vram_end; } ;
struct TYPE_5__ {int gpu_addr; } ;
struct TYPE_4__ {scalar_t__ num_crtc; } ;
struct amdgpu_device {int dev; TYPE_3__ gmc; TYPE_2__ vram_scratch; TYPE_1__ mode_info; } ;


 int BIF_FB_EN__FB_READ_EN_MASK ;
 int BIF_FB_EN__FB_WRITE_EN_MASK ;
 int FLUSH_INVALIDATE_CACHE ;
 int HDP_MISC_CNTL ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (int) ;
 int VGA_HDP_CONTROL ;
 int VGA_MEMORY_DISABLE ;
 int VGA_RENDER_CONTROL ;
 int VGA_VSTATUS_CNTL ;
 int WREG32 (int,int) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int dev_warn (int ,char*) ;
 scalar_t__ gmc_v8_0_wait_for_idle (void*) ;
 int mmBIF_FB_EN ;
 int mmHDP_HOST_PATH_CNTL ;
 int mmHDP_MISC_CNTL ;
 int mmHDP_NONSURFACE_BASE ;
 int mmHDP_NONSURFACE_INFO ;
 int mmHDP_NONSURFACE_SIZE ;
 int mmHDP_REG_COHERENCY_FLUSH_CNTL ;
 int mmMC_VM_AGP_BASE ;
 int mmMC_VM_AGP_BOT ;
 int mmMC_VM_AGP_TOP ;
 int mmMC_VM_FB_LOCATION ;
 int mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR ;
 int mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR ;
 int mmMC_VM_SYSTEM_APERTURE_LOW_ADDR ;
 int mmVGA_HDP_CONTROL ;
 int mmVGA_RENDER_CONTROL ;

__attribute__((used)) static void gmc_v8_0_mc_program(struct amdgpu_device *adev)
{
 u32 tmp;
 int i, j;


 for (i = 0, j = 0; i < 32; i++, j += 0x6) {
  WREG32((0xb05 + j), 0x00000000);
  WREG32((0xb06 + j), 0x00000000);
  WREG32((0xb07 + j), 0x00000000);
  WREG32((0xb08 + j), 0x00000000);
  WREG32((0xb09 + j), 0x00000000);
 }
 WREG32(mmHDP_REG_COHERENCY_FLUSH_CNTL, 0);

 if (gmc_v8_0_wait_for_idle((void *)adev)) {
  dev_warn(adev->dev, "Wait for MC idle timedout !\n");
 }
 if (adev->mode_info.num_crtc) {

  tmp = RREG32(mmVGA_HDP_CONTROL);
  tmp = REG_SET_FIELD(tmp, VGA_HDP_CONTROL, VGA_MEMORY_DISABLE, 1);
  WREG32(mmVGA_HDP_CONTROL, tmp);


  tmp = RREG32(mmVGA_RENDER_CONTROL);
  tmp = REG_SET_FIELD(tmp, VGA_RENDER_CONTROL, VGA_VSTATUS_CNTL, 0);
  WREG32(mmVGA_RENDER_CONTROL, tmp);
 }

 WREG32(mmMC_VM_SYSTEM_APERTURE_LOW_ADDR,
        adev->gmc.vram_start >> 12);
 WREG32(mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR,
        adev->gmc.vram_end >> 12);
 WREG32(mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR,
        adev->vram_scratch.gpu_addr >> 12);

 if (amdgpu_sriov_vf(adev)) {
  tmp = ((adev->gmc.vram_end >> 24) & 0xFFFF) << 16;
  tmp |= ((adev->gmc.vram_start >> 24) & 0xFFFF);
  WREG32(mmMC_VM_FB_LOCATION, tmp);

  WREG32(mmHDP_NONSURFACE_BASE, (adev->gmc.vram_start >> 8));
  WREG32(mmHDP_NONSURFACE_INFO, (2 << 7) | (1 << 30));
  WREG32(mmHDP_NONSURFACE_SIZE, 0x3FFFFFFF);
 }

 WREG32(mmMC_VM_AGP_BASE, 0);
 WREG32(mmMC_VM_AGP_TOP, 0x0FFFFFFF);
 WREG32(mmMC_VM_AGP_BOT, 0x0FFFFFFF);
 if (gmc_v8_0_wait_for_idle((void *)adev)) {
  dev_warn(adev->dev, "Wait for MC idle timedout !\n");
 }

 WREG32(mmBIF_FB_EN, BIF_FB_EN__FB_READ_EN_MASK | BIF_FB_EN__FB_WRITE_EN_MASK);

 tmp = RREG32(mmHDP_MISC_CNTL);
 tmp = REG_SET_FIELD(tmp, HDP_MISC_CNTL, FLUSH_INVALIDATE_CACHE, 0);
 WREG32(mmHDP_MISC_CNTL, tmp);

 tmp = RREG32(mmHDP_HOST_PATH_CNTL);
 WREG32(mmHDP_HOST_PATH_CNTL, tmp);
}
