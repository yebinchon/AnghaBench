
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct radeon_ring {scalar_t__ idx; } ;
struct radeon_ib {int* ptr; int length_dw; TYPE_2__* fence; } ;
struct TYPE_3__ {int * wb; scalar_t__ gpu_addr; } ;
struct radeon_device {unsigned int usec_timeout; TYPE_1__ wb; } ;
struct TYPE_4__ {int ring; } ;


 unsigned int CAYMAN_WB_DMA1_RING_TEST_OFFSET ;
 int DMA_PACKET (int ,int ,int ,int) ;
 int DMA_PACKET_WRITE ;
 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,int ,unsigned int) ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ R600_RING_TYPE_DMA_INDEX ;
 unsigned int R600_WB_DMA_RING_TEST_OFFSET ;
 int RADEON_USEC_IB_TEST_TIMEOUT ;
 int le32_to_cpu (int ) ;
 int lower_32_bits (scalar_t__) ;
 int radeon_fence_wait_timeout (TYPE_2__*,int,int ) ;
 int radeon_ib_free (struct radeon_device*,struct radeon_ib*) ;
 int radeon_ib_get (struct radeon_device*,scalar_t__,struct radeon_ib*,int *,int) ;
 int radeon_ib_schedule (struct radeon_device*,struct radeon_ib*,int *,int) ;
 int udelay (int) ;
 int upper_32_bits (scalar_t__) ;
 int usecs_to_jiffies (int ) ;

int r600_dma_ib_test(struct radeon_device *rdev, struct radeon_ring *ring)
{
 struct radeon_ib ib;
 unsigned i;
 unsigned index;
 int r;
 u32 tmp = 0;
 u64 gpu_addr;

 if (ring->idx == R600_RING_TYPE_DMA_INDEX)
  index = R600_WB_DMA_RING_TEST_OFFSET;
 else
  index = CAYMAN_WB_DMA1_RING_TEST_OFFSET;

 gpu_addr = rdev->wb.gpu_addr + index;

 r = radeon_ib_get(rdev, ring->idx, &ib, ((void*)0), 256);
 if (r) {
  DRM_ERROR("radeon: failed to get ib (%d).\n", r);
  return r;
 }

 ib.ptr[0] = DMA_PACKET(DMA_PACKET_WRITE, 0, 0, 1);
 ib.ptr[1] = lower_32_bits(gpu_addr);
 ib.ptr[2] = upper_32_bits(gpu_addr) & 0xff;
 ib.ptr[3] = 0xDEADBEEF;
 ib.length_dw = 4;

 r = radeon_ib_schedule(rdev, &ib, ((void*)0), 0);
 if (r) {
  radeon_ib_free(rdev, &ib);
  DRM_ERROR("radeon: failed to schedule ib (%d).\n", r);
  return r;
 }
 r = radeon_fence_wait_timeout(ib.fence, 0, usecs_to_jiffies(
  RADEON_USEC_IB_TEST_TIMEOUT));
 if (r < 0) {
  DRM_ERROR("radeon: fence wait failed (%d).\n", r);
  return r;
 } else if (r == 0) {
  DRM_ERROR("radeon: fence wait timed out.\n");
  return -ETIMEDOUT;
 }
 r = 0;
 for (i = 0; i < rdev->usec_timeout; i++) {
  tmp = le32_to_cpu(rdev->wb.wb[index/4]);
  if (tmp == 0xDEADBEEF)
   break;
  udelay(1);
 }
 if (i < rdev->usec_timeout) {
  DRM_INFO("ib test on ring %d succeeded in %u usecs\n", ib.fence->ring, i);
 } else {
  DRM_ERROR("radeon: ib test failed (0x%08X)\n", tmp);
  r = -EINVAL;
 }
 radeon_ib_free(rdev, &ib);
 return r;
}
