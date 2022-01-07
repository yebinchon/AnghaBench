
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_ring {int queue; int pipe; int me; } ;
struct radeon_device {scalar_t__ usec_timeout; } ;


 int CP_HQD_ACTIVE ;
 int CP_HQD_DEQUEUE_REQUEST ;
 int CP_HQD_PQ_RPTR ;
 int CP_HQD_PQ_WPTR ;
 int CP_PQ_WPTR_POLL_CNTL ;
 int RREG32 (int ) ;
 scalar_t__ WPTR_POLL_EN ;
 int WREG32 (int ,int) ;
 int cik_srbm_select (struct radeon_device*,int ,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void cik_compute_stop(struct radeon_device *rdev,
        struct radeon_ring *ring)
{
 u32 j, tmp;

 cik_srbm_select(rdev, ring->me, ring->pipe, ring->queue, 0);

 tmp = RREG32(CP_PQ_WPTR_POLL_CNTL);
 tmp &= ~WPTR_POLL_EN;
 WREG32(CP_PQ_WPTR_POLL_CNTL, tmp);

 if (RREG32(CP_HQD_ACTIVE) & 1) {
  WREG32(CP_HQD_DEQUEUE_REQUEST, 1);
  for (j = 0; j < rdev->usec_timeout; j++) {
   if (!(RREG32(CP_HQD_ACTIVE) & 1))
    break;
   udelay(1);
  }
  WREG32(CP_HQD_DEQUEUE_REQUEST, 0);
  WREG32(CP_HQD_PQ_RPTR, 0);
  WREG32(CP_HQD_PQ_WPTR, 0);
 }
 cik_srbm_select(rdev, 0, 0, 0, 0);
}
