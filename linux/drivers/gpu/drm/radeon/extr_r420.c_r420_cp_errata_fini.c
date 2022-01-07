
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ring {int dummy; } ;
struct TYPE_3__ {int resync_scratch; } ;
struct TYPE_4__ {TYPE_1__ r300; } ;
struct radeon_device {TYPE_2__ config; struct radeon_ring* ring; } ;


 int PACKET0 (int ,int ) ;
 int R300_RB3D_DC_FINISH ;
 int R300_RB3D_DSTCACHE_CTLSTAT ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int WARN_ON (int) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_write (struct radeon_ring*,int ) ;
 int radeon_scratch_free (struct radeon_device*,int ) ;

__attribute__((used)) static void r420_cp_errata_fini(struct radeon_device *rdev)
{
 int r;
 struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];




 r = radeon_ring_lock(rdev, ring, 8);
 WARN_ON(r);
 radeon_ring_write(ring, PACKET0(R300_RB3D_DSTCACHE_CTLSTAT, 0));
 radeon_ring_write(ring, R300_RB3D_DC_FINISH);
 radeon_ring_unlock_commit(rdev, ring, 0);
 radeon_scratch_free(rdev, rdev->config.r300.resync_scratch);
}
