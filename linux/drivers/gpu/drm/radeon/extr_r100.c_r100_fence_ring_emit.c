
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct radeon_device {TYPE_1__* fence_drv; struct radeon_ring* ring; } ;
struct TYPE_2__ {int scratch_reg; } ;


 int PACKET0 (int ,int ) ;
 int RADEON_GEN_INT_STATUS ;
 int RADEON_RB3D_DC_FLUSH_ALL ;
 int RADEON_RB3D_DSTCACHE_CTLSTAT ;
 int RADEON_RB3D_ZCACHE_CTLSTAT ;
 int RADEON_RB3D_ZC_FLUSH_ALL ;
 int RADEON_SW_INT_FIRE ;
 int RADEON_WAIT_2D_IDLECLEAN ;
 int RADEON_WAIT_3D_IDLECLEAN ;
 int RADEON_WAIT_UNTIL ;
 int r100_ring_hdp_flush (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void r100_fence_ring_emit(struct radeon_device *rdev,
     struct radeon_fence *fence)
{
 struct radeon_ring *ring = &rdev->ring[fence->ring];



 radeon_ring_write(ring, PACKET0(RADEON_RB3D_DSTCACHE_CTLSTAT, 0));
 radeon_ring_write(ring, RADEON_RB3D_DC_FLUSH_ALL);
 radeon_ring_write(ring, PACKET0(RADEON_RB3D_ZCACHE_CTLSTAT, 0));
 radeon_ring_write(ring, RADEON_RB3D_ZC_FLUSH_ALL);

 radeon_ring_write(ring, PACKET0(RADEON_WAIT_UNTIL, 0));
 radeon_ring_write(ring, RADEON_WAIT_2D_IDLECLEAN | RADEON_WAIT_3D_IDLECLEAN);
 r100_ring_hdp_flush(rdev, ring);

 radeon_ring_write(ring, PACKET0(rdev->fence_drv[fence->ring].scratch_reg, 0));
 radeon_ring_write(ring, fence->seq);
 radeon_ring_write(ring, PACKET0(RADEON_GEN_INT_STATUS, 0));
 radeon_ring_write(ring, RADEON_SW_INT_FIRE);
}
