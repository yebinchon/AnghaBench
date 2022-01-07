
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int usec_timeout; } ;


 int CP_HQD_ACTIVE__ACTIVE_MASK ;
 int CP_HQD_DEQUEUE_REQUEST ;
 int DEQUEUE_REQ ;
 int ETIMEDOUT ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int WREG32_FIELD (int ,int ,int ) ;
 int mmCP_HQD_ACTIVE ;
 int mmCP_HQD_DEQUEUE_REQUEST ;
 int mmCP_HQD_PQ_RPTR ;
 int mmCP_HQD_PQ_WPTR ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v8_0_deactivate_hqd(struct amdgpu_device *adev, u32 req)
{
 int i, r = 0;

 if (RREG32(mmCP_HQD_ACTIVE) & CP_HQD_ACTIVE__ACTIVE_MASK) {
  WREG32_FIELD(CP_HQD_DEQUEUE_REQUEST, DEQUEUE_REQ, req);
  for (i = 0; i < adev->usec_timeout; i++) {
   if (!(RREG32(mmCP_HQD_ACTIVE) & CP_HQD_ACTIVE__ACTIVE_MASK))
    break;
   udelay(1);
  }
  if (i == adev->usec_timeout)
   r = -ETIMEDOUT;
 }
 WREG32(mmCP_HQD_DEQUEUE_REQUEST, 0);
 WREG32(mmCP_HQD_PQ_RPTR, 0);
 WREG32(mmCP_HQD_PQ_WPTR, 0);

 return r;
}
