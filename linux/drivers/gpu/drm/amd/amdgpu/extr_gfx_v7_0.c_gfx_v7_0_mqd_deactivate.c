
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int usec_timeout; } ;


 int ETIMEDOUT ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mmCP_HQD_ACTIVE ;
 int mmCP_HQD_DEQUEUE_REQUEST ;
 int mmCP_HQD_PQ_RPTR ;
 int mmCP_HQD_PQ_WPTR ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v7_0_mqd_deactivate(struct amdgpu_device *adev)
{
 int i;


 if (RREG32(mmCP_HQD_ACTIVE) & 1) {
  WREG32(mmCP_HQD_DEQUEUE_REQUEST, 1);
  for (i = 0; i < adev->usec_timeout; i++) {
   if (!(RREG32(mmCP_HQD_ACTIVE) & 1))
    break;
   udelay(1);
  }

  if (i == adev->usec_timeout)
   return -ETIMEDOUT;

  WREG32(mmCP_HQD_DEQUEUE_REQUEST, 0);
  WREG32(mmCP_HQD_PQ_RPTR, 0);
  WREG32(mmCP_HQD_PQ_WPTR, 0);
 }

 return 0;
}
