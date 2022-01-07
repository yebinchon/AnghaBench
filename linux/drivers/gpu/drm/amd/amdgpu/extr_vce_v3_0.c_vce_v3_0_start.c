
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int gpu_addr; int ring_size; int wptr; } ;
struct TYPE_2__ {int harvest_config; struct amdgpu_ring* ring; } ;
struct amdgpu_device {scalar_t__ asic_type; int grbm_idx_mutex; TYPE_1__ vce; } ;


 int AMDGPU_VCE_HARVEST_VCE0 ;
 scalar_t__ CHIP_STONEY ;
 int CLK_EN ;
 int DRM_ERROR (char*) ;
 int ECPU_SOFT_RESET ;
 int GET_VCE_INSTANCE (int) ;
 int JOB_BUSY ;
 int VCE_SOFT_RESET ;
 int VCE_STATUS ;
 int VCE_VCPU_CNTL ;
 int WREG32 (int ,int) ;
 int WREG32_FIELD (int ,int ,int) ;
 int WREG32_P (int ,int,int) ;
 int lower_32_bits (int ) ;
 int mdelay (int) ;
 int mmGRBM_GFX_INDEX ;
 int mmGRBM_GFX_INDEX_DEFAULT ;
 int mmVCE_RB_BASE_HI ;
 int mmVCE_RB_BASE_HI2 ;
 int mmVCE_RB_BASE_HI3 ;
 int mmVCE_RB_BASE_LO ;
 int mmVCE_RB_BASE_LO2 ;
 int mmVCE_RB_BASE_LO3 ;
 int mmVCE_RB_RPTR ;
 int mmVCE_RB_RPTR2 ;
 int mmVCE_RB_RPTR3 ;
 int mmVCE_RB_SIZE ;
 int mmVCE_RB_SIZE2 ;
 int mmVCE_RB_SIZE3 ;
 int mmVCE_RB_WPTR ;
 int mmVCE_RB_WPTR2 ;
 int mmVCE_RB_WPTR3 ;
 int mmVCE_VCPU_CNTL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int upper_32_bits (int) ;
 int vce_v3_0_firmware_loaded (struct amdgpu_device*) ;
 int vce_v3_0_mc_resume (struct amdgpu_device*,int) ;

__attribute__((used)) static int vce_v3_0_start(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 int idx, r;

 mutex_lock(&adev->grbm_idx_mutex);
 for (idx = 0; idx < 2; ++idx) {
  if (adev->vce.harvest_config & (1 << idx))
   continue;

  WREG32(mmGRBM_GFX_INDEX, GET_VCE_INSTANCE(idx));



  if (idx != 1 || adev->vce.harvest_config == AMDGPU_VCE_HARVEST_VCE0) {
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

   ring = &adev->vce.ring[2];
   WREG32(mmVCE_RB_RPTR3, lower_32_bits(ring->wptr));
   WREG32(mmVCE_RB_WPTR3, lower_32_bits(ring->wptr));
   WREG32(mmVCE_RB_BASE_LO3, ring->gpu_addr);
   WREG32(mmVCE_RB_BASE_HI3, upper_32_bits(ring->gpu_addr));
   WREG32(mmVCE_RB_SIZE3, ring->ring_size / 4);
  }

  vce_v3_0_mc_resume(adev, idx);
  WREG32_FIELD(VCE_STATUS, JOB_BUSY, 1);

  if (adev->asic_type >= CHIP_STONEY)
   WREG32_P(mmVCE_VCPU_CNTL, 1, ~0x200001);
  else
   WREG32_FIELD(VCE_VCPU_CNTL, CLK_EN, 1);

  WREG32_FIELD(VCE_SOFT_RESET, ECPU_SOFT_RESET, 0);
  mdelay(100);

  r = vce_v3_0_firmware_loaded(adev);


  WREG32_FIELD(VCE_STATUS, JOB_BUSY, 0);

  if (r) {
   DRM_ERROR("VCE not responding, giving up!!!\n");
   mutex_unlock(&adev->grbm_idx_mutex);
   return r;
  }
 }

 WREG32(mmGRBM_GFX_INDEX, mmGRBM_GFX_INDEX_DEFAULT);
 mutex_unlock(&adev->grbm_idx_mutex);

 return 0;
}
