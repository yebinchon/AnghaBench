
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int usec_timeout; } ;


 int AMDGPU_MAX_USEC_TIMEOUT ;
 int DRM_DEBUG (char*) ;
 int GC ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15_RLC (int ,int ,int ,int) ;
 int mmCP_HQD_ACTIVE ;
 int mmCP_HQD_DEQUEUE_REQUEST ;
 int mmCP_HQD_IB_CONTROL ;
 int mmCP_HQD_IQ_TIMER ;
 int mmCP_HQD_PERSISTENT_STATE ;
 int mmCP_HQD_PQ_DOORBELL_CONTROL ;
 int mmCP_HQD_PQ_RPTR ;
 int mmCP_HQD_PQ_WPTR_HI ;
 int mmCP_HQD_PQ_WPTR_LO ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v9_0_kiq_fini_register(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 int j;


 if (RREG32_SOC15(GC, 0, mmCP_HQD_ACTIVE) & 1) {

  WREG32_SOC15_RLC(GC, 0, mmCP_HQD_DEQUEUE_REQUEST, 1);

  for (j = 0; j < adev->usec_timeout; j++) {
   if (!(RREG32_SOC15(GC, 0, mmCP_HQD_ACTIVE) & 1))
    break;
   udelay(1);
  }

  if (j == AMDGPU_MAX_USEC_TIMEOUT) {
   DRM_DEBUG("KIQ dequeue request failed.\n");


   WREG32_SOC15_RLC(GC, 0, mmCP_HQD_ACTIVE, 0);
  }

  WREG32_SOC15_RLC(GC, 0, mmCP_HQD_DEQUEUE_REQUEST,
        0);
 }

 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_IQ_TIMER, 0);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_IB_CONTROL, 0);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PERSISTENT_STATE, 0);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_DOORBELL_CONTROL, 0x40000000);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_DOORBELL_CONTROL, 0);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_RPTR, 0);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_WPTR_HI, 0);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_WPTR_LO, 0);

 return 0;
}
