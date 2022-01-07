
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ring {int dummy; } ;
struct TYPE_3__ {int max_hw_contexts; } ;
struct TYPE_4__ {TYPE_1__ cik; } ;
struct radeon_device {TYPE_2__ config; struct radeon_ring* ring; } ;


 int CE_PARTITION_BASE ;
 int CP_DEVICE_ID ;
 int CP_ENDIAN_SWAP ;
 int CP_MAX_CONTEXT ;
 int DRM_ERROR (char*,int) ;
 int PACKET3 (int ,int) ;
 int PACKET3_BASE_INDEX (int ) ;
 int PACKET3_CLEAR_STATE ;
 int PACKET3_CONTEXT_CONTROL ;
 int PACKET3_PREAMBLE_BEGIN_CLEAR_STATE ;
 int PACKET3_PREAMBLE_CNTL ;
 int PACKET3_PREAMBLE_END_CLEAR_STATE ;
 int PACKET3_SET_BASE ;
 int PACKET3_SET_CONTEXT_REG ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int WREG32 (int ,int) ;
 int cik_cp_gfx_enable (struct radeon_device*,int) ;
 int cik_default_size ;
 int* cik_default_state ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

__attribute__((used)) static int cik_cp_gfx_start(struct radeon_device *rdev)
{
 struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 int r, i;


 WREG32(CP_MAX_CONTEXT, rdev->config.cik.max_hw_contexts - 1);
 WREG32(CP_ENDIAN_SWAP, 0);
 WREG32(CP_DEVICE_ID, 1);

 cik_cp_gfx_enable(rdev, 1);

 r = radeon_ring_lock(rdev, ring, cik_default_size + 17);
 if (r) {
  DRM_ERROR("radeon: cp failed to lock ring (%d).\n", r);
  return r;
 }


 radeon_ring_write(ring, PACKET3(PACKET3_SET_BASE, 2));
 radeon_ring_write(ring, PACKET3_BASE_INDEX(CE_PARTITION_BASE));
 radeon_ring_write(ring, 0x8000);
 radeon_ring_write(ring, 0x8000);


 radeon_ring_write(ring, PACKET3(PACKET3_PREAMBLE_CNTL, 0));
 radeon_ring_write(ring, PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);

 radeon_ring_write(ring, PACKET3(PACKET3_CONTEXT_CONTROL, 1));
 radeon_ring_write(ring, 0x80000000);
 radeon_ring_write(ring, 0x80000000);

 for (i = 0; i < cik_default_size; i++)
  radeon_ring_write(ring, cik_default_state[i]);

 radeon_ring_write(ring, PACKET3(PACKET3_PREAMBLE_CNTL, 0));
 radeon_ring_write(ring, PACKET3_PREAMBLE_END_CLEAR_STATE);


 radeon_ring_write(ring, PACKET3(PACKET3_CLEAR_STATE, 0));
 radeon_ring_write(ring, 0);

 radeon_ring_write(ring, PACKET3(PACKET3_SET_CONTEXT_REG, 2));
 radeon_ring_write(ring, 0x00000316);
 radeon_ring_write(ring, 0x0000000e);
 radeon_ring_write(ring, 0x00000010);

 radeon_ring_unlock_commit(rdev, ring, 0);

 return 0;
}
