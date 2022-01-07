
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct radeon_ring {scalar_t__ idx; } ;
struct TYPE_2__ {int * wb; scalar_t__ gpu_addr; } ;
struct radeon_device {unsigned int usec_timeout; TYPE_1__ wb; } ;


 unsigned int CAYMAN_WB_DMA1_RING_TEST_OFFSET ;
 int DRM_ERROR (char*,scalar_t__,int) ;
 int DRM_INFO (char*,scalar_t__,unsigned int) ;
 int EINVAL ;
 scalar_t__ R600_RING_TYPE_DMA_INDEX ;
 unsigned int R600_WB_DMA_RING_TEST_OFFSET ;
 int SDMA_OPCODE_WRITE ;
 int SDMA_PACKET (int ,int ,int ) ;
 int SDMA_WRITE_SUB_OPCODE_LINEAR ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int lower_32_bits (scalar_t__) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int udelay (int) ;
 int upper_32_bits (scalar_t__) ;

int cik_sdma_ring_test(struct radeon_device *rdev,
         struct radeon_ring *ring)
{
 unsigned i;
 int r;
 unsigned index;
 u32 tmp;
 u64 gpu_addr;

 if (ring->idx == R600_RING_TYPE_DMA_INDEX)
  index = R600_WB_DMA_RING_TEST_OFFSET;
 else
  index = CAYMAN_WB_DMA1_RING_TEST_OFFSET;

 gpu_addr = rdev->wb.gpu_addr + index;

 tmp = 0xCAFEDEAD;
 rdev->wb.wb[index/4] = cpu_to_le32(tmp);

 r = radeon_ring_lock(rdev, ring, 5);
 if (r) {
  DRM_ERROR("radeon: dma failed to lock ring %d (%d).\n", ring->idx, r);
  return r;
 }
 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_WRITE, SDMA_WRITE_SUB_OPCODE_LINEAR, 0));
 radeon_ring_write(ring, lower_32_bits(gpu_addr));
 radeon_ring_write(ring, upper_32_bits(gpu_addr));
 radeon_ring_write(ring, 1);
 radeon_ring_write(ring, 0xDEADBEEF);
 radeon_ring_unlock_commit(rdev, ring, 0);

 for (i = 0; i < rdev->usec_timeout; i++) {
  tmp = le32_to_cpu(rdev->wb.wb[index/4]);
  if (tmp == 0xDEADBEEF)
   break;
  udelay(1);
 }

 if (i < rdev->usec_timeout) {
  DRM_INFO("ring test on %d succeeded in %d usecs\n", ring->idx, i);
 } else {
  DRM_ERROR("radeon: ring %d test failed (0x%08X)\n",
     ring->idx, tmp);
  r = -EINVAL;
 }
 return r;
}
