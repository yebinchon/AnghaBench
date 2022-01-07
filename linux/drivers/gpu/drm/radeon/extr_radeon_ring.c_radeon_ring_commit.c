
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ring {size_t idx; int wptr; int align_mask; int nop; } ;
struct radeon_device {TYPE_2__* asic; } ;
struct TYPE_4__ {int (* mmio_hdp_flush ) (struct radeon_device*) ;TYPE_1__** ring; } ;
struct TYPE_3__ {int (* hdp_flush ) (struct radeon_device*,struct radeon_ring*) ;} ;


 int mb () ;
 int radeon_ring_set_wptr (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_write (struct radeon_ring*,int ) ;
 int stub1 (struct radeon_device*,struct radeon_ring*) ;
 int stub2 (struct radeon_device*) ;

void radeon_ring_commit(struct radeon_device *rdev, struct radeon_ring *ring,
   bool hdp_flush)
{



 if (hdp_flush && rdev->asic->ring[ring->idx]->hdp_flush)
  rdev->asic->ring[ring->idx]->hdp_flush(rdev, ring);

 while (ring->wptr & ring->align_mask) {
  radeon_ring_write(ring, ring->nop);
 }
 mb();



 if (hdp_flush && rdev->asic->mmio_hdp_flush)
  rdev->asic->mmio_hdp_flush(rdev);
 radeon_ring_set_wptr(rdev, ring);
}
