
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {int wptr; int gpu_addr; int ring_size; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 int DRM_ERROR (char*) ;
 int RREG32 (int ) ;
 size_t TN_RING_TYPE_VCE1_INDEX ;
 size_t TN_RING_TYPE_VCE2_INDEX ;
 int VCE_CLK_EN ;
 int VCE_ECPU_SOFT_RESET ;
 int VCE_FME_SOFT_RESET ;
 int VCE_RB_BASE_HI ;
 int VCE_RB_BASE_HI2 ;
 int VCE_RB_BASE_LO ;
 int VCE_RB_BASE_LO2 ;
 int VCE_RB_RPTR ;
 int VCE_RB_RPTR2 ;
 int VCE_RB_SIZE ;
 int VCE_RB_SIZE2 ;
 int VCE_RB_WPTR ;
 int VCE_RB_WPTR2 ;
 int VCE_SOFT_RESET ;
 int VCE_STATUS ;
 int VCE_VCPU_CNTL ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int,int) ;
 int mdelay (int) ;
 int upper_32_bits (int) ;

int vce_v1_0_start(struct radeon_device *rdev)
{
 struct radeon_ring *ring;
 int i, j, r;


 WREG32_P(VCE_STATUS, 1, ~1);

 ring = &rdev->ring[TN_RING_TYPE_VCE1_INDEX];
 WREG32(VCE_RB_RPTR, ring->wptr);
 WREG32(VCE_RB_WPTR, ring->wptr);
 WREG32(VCE_RB_BASE_LO, ring->gpu_addr);
 WREG32(VCE_RB_BASE_HI, upper_32_bits(ring->gpu_addr));
 WREG32(VCE_RB_SIZE, ring->ring_size / 4);

 ring = &rdev->ring[TN_RING_TYPE_VCE2_INDEX];
 WREG32(VCE_RB_RPTR2, ring->wptr);
 WREG32(VCE_RB_WPTR2, ring->wptr);
 WREG32(VCE_RB_BASE_LO2, ring->gpu_addr);
 WREG32(VCE_RB_BASE_HI2, upper_32_bits(ring->gpu_addr));
 WREG32(VCE_RB_SIZE2, ring->ring_size / 4);

 WREG32_P(VCE_VCPU_CNTL, VCE_CLK_EN, ~VCE_CLK_EN);

 WREG32_P(VCE_SOFT_RESET,
   VCE_ECPU_SOFT_RESET |
   VCE_FME_SOFT_RESET, ~(
   VCE_ECPU_SOFT_RESET |
   VCE_FME_SOFT_RESET));

 mdelay(100);

 WREG32_P(VCE_SOFT_RESET, 0, ~(
   VCE_ECPU_SOFT_RESET |
   VCE_FME_SOFT_RESET));

 for (i = 0; i < 10; ++i) {
  uint32_t status;
  for (j = 0; j < 100; ++j) {
   status = RREG32(VCE_STATUS);
   if (status & 2)
    break;
   mdelay(10);
  }
  r = 0;
  if (status & 2)
   break;

  DRM_ERROR("VCE not responding, trying to reset the ECPU!!!\n");
  WREG32_P(VCE_SOFT_RESET, VCE_ECPU_SOFT_RESET, ~VCE_ECPU_SOFT_RESET);
  mdelay(10);
  WREG32_P(VCE_SOFT_RESET, 0, ~VCE_ECPU_SOFT_RESET);
  mdelay(10);
  r = -1;
 }


 WREG32_P(VCE_STATUS, 0, ~1);

 if (r) {
  DRM_ERROR("VCE not responding, giving up!!!\n");
  return r;
 }

 return 0;
}
