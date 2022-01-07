
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int gpu_addr; int ring_size; int wptr; } ;
struct TYPE_2__ {struct amdgpu_ring* ring; } ;
struct amdgpu_device {TYPE_1__ vce; } ;


 int CLK_EN ;
 int DRM_ERROR (char*) ;
 int ECPU_SOFT_RESET ;
 int VCE_SOFT_RESET ;
 int VCE_VCPU_CNTL ;
 int WREG32 (int ,int) ;
 int WREG32_FIELD (int ,int ,int) ;
 int WREG32_P (int ,int,int) ;
 int lower_32_bits (int ) ;
 int mdelay (int) ;
 int mmVCE_RB_BASE_HI ;
 int mmVCE_RB_BASE_HI2 ;
 int mmVCE_RB_BASE_LO ;
 int mmVCE_RB_BASE_LO2 ;
 int mmVCE_RB_RPTR ;
 int mmVCE_RB_RPTR2 ;
 int mmVCE_RB_SIZE ;
 int mmVCE_RB_SIZE2 ;
 int mmVCE_RB_WPTR ;
 int mmVCE_RB_WPTR2 ;
 int mmVCE_STATUS ;
 int upper_32_bits (int) ;
 int vce_v2_0_disable_cg (struct amdgpu_device*) ;
 int vce_v2_0_firmware_loaded (struct amdgpu_device*) ;
 int vce_v2_0_init_cg (struct amdgpu_device*) ;
 int vce_v2_0_mc_resume (struct amdgpu_device*) ;

__attribute__((used)) static int vce_v2_0_start(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 int r;


 WREG32_P(mmVCE_STATUS, 1, ~1);

 vce_v2_0_init_cg(adev);
 vce_v2_0_disable_cg(adev);

 vce_v2_0_mc_resume(adev);

 ring = &adev->vce.ring[0];
 WREG32(mmVCE_RB_RPTR, lower_32_bits(ring->wptr));
 WREG32(mmVCE_RB_WPTR, lower_32_bits(ring->wptr));
 WREG32(mmVCE_RB_BASE_LO, ring->gpu_addr);
 WREG32(mmVCE_RB_BASE_HI, upper_32_bits(ring->gpu_addr));
 WREG32(mmVCE_RB_SIZE, ring->ring_size / 4);

 ring = &adev->vce.ring[1];
 WREG32(mmVCE_RB_RPTR2, lower_32_bits(ring->wptr));
 WREG32(mmVCE_RB_WPTR2, lower_32_bits(ring->wptr));
 WREG32(mmVCE_RB_BASE_LO2, ring->gpu_addr);
 WREG32(mmVCE_RB_BASE_HI2, upper_32_bits(ring->gpu_addr));
 WREG32(mmVCE_RB_SIZE2, ring->ring_size / 4);

 WREG32_FIELD(VCE_VCPU_CNTL, CLK_EN, 1);
 WREG32_FIELD(VCE_SOFT_RESET, ECPU_SOFT_RESET, 1);
 mdelay(100);
 WREG32_FIELD(VCE_SOFT_RESET, ECPU_SOFT_RESET, 0);

 r = vce_v2_0_firmware_loaded(adev);


 WREG32_P(mmVCE_STATUS, 0, ~1);

 if (r) {
  DRM_ERROR("VCE not responding, giving up!!!\n");
  return r;
 }

 return 0;
}
