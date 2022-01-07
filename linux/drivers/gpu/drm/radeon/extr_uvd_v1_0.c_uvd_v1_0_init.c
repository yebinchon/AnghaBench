
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {int ready; } ;
struct radeon_device {int family; struct radeon_ring* ring; } ;







 int CHIP_RV740 ;
 int DRM_ERROR (char*,int) ;
 int DRM_INFO (char*) ;
 int MC_CONFIG ;
 int PACKET0 (int ,int ) ;
 size_t R600_RING_TYPE_UVD_INDEX ;
 int RS_DQ_RD_RET_CONF ;
 int UVD_SEMA_CNTL ;
 int UVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL ;
 int UVD_SEMA_TIMEOUT_STATUS ;
 int UVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL ;
 int UVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL ;
 int UVD_VCPU_CNTL ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int,int) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_test (struct radeon_device*,size_t,struct radeon_ring*) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int radeon_set_uvd_clocks (struct radeon_device*,int,int) ;
 int uvd_v1_0_start (struct radeon_device*) ;

int uvd_v1_0_init(struct radeon_device *rdev)
{
 struct radeon_ring *ring = &rdev->ring[R600_RING_TYPE_UVD_INDEX];
 uint32_t tmp;
 int r;


 if (rdev->family < CHIP_RV740)
  radeon_set_uvd_clocks(rdev, 10000, 10000);
 else
  radeon_set_uvd_clocks(rdev, 53300, 40000);

 r = uvd_v1_0_start(rdev);
 if (r)
  goto done;

 ring->ready = 1;
 r = radeon_ring_test(rdev, R600_RING_TYPE_UVD_INDEX, ring);
 if (r) {
  ring->ready = 0;
  goto done;
 }

 r = radeon_ring_lock(rdev, ring, 10);
 if (r) {
  DRM_ERROR("radeon: ring failed to lock UVD ring (%d).\n", r);
  goto done;
 }

 tmp = PACKET0(UVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL, 0);
 radeon_ring_write(ring, tmp);
 radeon_ring_write(ring, 0xFFFFF);

 tmp = PACKET0(UVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL, 0);
 radeon_ring_write(ring, tmp);
 radeon_ring_write(ring, 0xFFFFF);

 tmp = PACKET0(UVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL, 0);
 radeon_ring_write(ring, tmp);
 radeon_ring_write(ring, 0xFFFFF);


 radeon_ring_write(ring, PACKET0(UVD_SEMA_TIMEOUT_STATUS, 0));
 radeon_ring_write(ring, 0x8);

 radeon_ring_write(ring, PACKET0(UVD_SEMA_CNTL, 0));
 radeon_ring_write(ring, 3);

 radeon_ring_unlock_commit(rdev, ring, 0);

done:

 radeon_set_uvd_clocks(rdev, 0, 0);

 if (!r) {
  switch (rdev->family) {
  case 132:
  case 130:
  case 131:

   WREG32(MC_CONFIG, 0);
   WREG32(MC_CONFIG, 1 << 4);
   WREG32(RS_DQ_RD_RET_CONF, 0x3f);
   WREG32(MC_CONFIG, 0x1f);


  case 128:
  case 129:


   WREG32_P(UVD_VCPU_CNTL, 0x10, ~0x10);
   break;

  default:

   break;
  }

  DRM_INFO("UVD initialized successfully.\n");
 }

 return r;
}
