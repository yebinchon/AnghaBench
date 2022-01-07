
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int DCE ;
 int VGA_HDP_CONTROL ;
 int VGA_MEMORY_DISABLE ;
 int VGA_RENDER_CONTROL ;
 int VGA_VSTATUS_CNTL ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;
 int gmc_v9_0_gart_enable (struct amdgpu_device*) ;
 int gmc_v9_0_init_golden_registers (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v9_0_hw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 gmc_v9_0_init_golden_registers(adev);

 if (adev->mode_info.num_crtc) {

  WREG32_FIELD15(DCE, 0, VGA_HDP_CONTROL, VGA_MEMORY_DISABLE, 1);


  WREG32_FIELD15(DCE, 0, VGA_RENDER_CONTROL, VGA_VSTATUS_CNTL, 0);
 }

 r = gmc_v9_0_gart_enable(adev);

 return r;
}
