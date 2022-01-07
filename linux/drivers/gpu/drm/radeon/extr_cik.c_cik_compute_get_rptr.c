
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {int rptr_offs; int queue; int pipe; int me; } ;
struct TYPE_2__ {int * wb; scalar_t__ enabled; } ;
struct radeon_device {int srbm_mutex; TYPE_1__ wb; } ;


 int CP_HQD_PQ_RPTR ;
 int RREG32 (int ) ;
 int cik_srbm_select (struct radeon_device*,int ,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u32 cik_compute_get_rptr(struct radeon_device *rdev,
    struct radeon_ring *ring)
{
 u32 rptr;

 if (rdev->wb.enabled) {
  rptr = rdev->wb.wb[ring->rptr_offs/4];
 } else {
  mutex_lock(&rdev->srbm_mutex);
  cik_srbm_select(rdev, ring->me, ring->pipe, ring->queue, 0);
  rptr = RREG32(CP_HQD_PQ_RPTR);
  cik_srbm_select(rdev, 0, 0, 0, 0);
  mutex_unlock(&rdev->srbm_mutex);
 }

 return rptr;
}
