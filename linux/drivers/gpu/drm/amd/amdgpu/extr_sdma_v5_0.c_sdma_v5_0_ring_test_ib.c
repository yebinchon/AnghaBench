
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int idx; struct amdgpu_device* adev; } ;
struct amdgpu_ib {int* ptr; int length_dw; } ;
struct TYPE_2__ {int * wb; scalar_t__ gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; int dev; } ;
typedef int ib ;


 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,int ) ;
 long EINVAL ;
 long ETIMEDOUT ;
 int SDMA_OP_NOP ;
 int SDMA_OP_WRITE ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int SDMA_PKT_HEADER_SUB_OP (int ) ;
 void* SDMA_PKT_NOP_HEADER_OP (int ) ;
 int SDMA_PKT_WRITE_UNTILED_DW_3_COUNT (int ) ;
 int SDMA_SUBOP_WRITE_LINEAR ;
 int amdgpu_device_wb_free (struct amdgpu_device*,unsigned int) ;
 long amdgpu_device_wb_get (struct amdgpu_device*,unsigned int*) ;
 int amdgpu_ib_free (struct amdgpu_device*,struct amdgpu_ib*,int *) ;
 long amdgpu_ib_get (struct amdgpu_device*,int *,int,struct amdgpu_ib*) ;
 long amdgpu_ib_schedule (struct amdgpu_ring*,int,struct amdgpu_ib*,int *,struct dma_fence**) ;
 int cpu_to_le32 (int) ;
 int dev_err (int ,char*,long) ;
 int dma_fence_put (struct dma_fence*) ;
 long dma_fence_wait_timeout (struct dma_fence*,int,long) ;
 int le32_to_cpu (int ) ;
 int lower_32_bits (scalar_t__) ;
 int memset (struct amdgpu_ib*,int ,int) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int sdma_v5_0_ring_test_ib(struct amdgpu_ring *ring, long timeout)
{
 struct amdgpu_device *adev = ring->adev;
 struct amdgpu_ib ib;
 struct dma_fence *f = ((void*)0);
 unsigned index;
 long r;
 u32 tmp = 0;
 u64 gpu_addr;

 r = amdgpu_device_wb_get(adev, &index);
 if (r) {
  dev_err(adev->dev, "(%ld) failed to allocate wb slot\n", r);
  return r;
 }

 gpu_addr = adev->wb.gpu_addr + (index * 4);
 tmp = 0xCAFEDEAD;
 adev->wb.wb[index] = cpu_to_le32(tmp);
 memset(&ib, 0, sizeof(ib));
 r = amdgpu_ib_get(adev, ((void*)0), 256, &ib);
 if (r) {
  DRM_ERROR("amdgpu: failed to get ib (%ld).\n", r);
  goto err0;
 }

 ib.ptr[0] = SDMA_PKT_HEADER_OP(SDMA_OP_WRITE) |
  SDMA_PKT_HEADER_SUB_OP(SDMA_SUBOP_WRITE_LINEAR);
 ib.ptr[1] = lower_32_bits(gpu_addr);
 ib.ptr[2] = upper_32_bits(gpu_addr);
 ib.ptr[3] = SDMA_PKT_WRITE_UNTILED_DW_3_COUNT(0);
 ib.ptr[4] = 0xDEADBEEF;
 ib.ptr[5] = SDMA_PKT_NOP_HEADER_OP(SDMA_OP_NOP);
 ib.ptr[6] = SDMA_PKT_NOP_HEADER_OP(SDMA_OP_NOP);
 ib.ptr[7] = SDMA_PKT_NOP_HEADER_OP(SDMA_OP_NOP);
 ib.length_dw = 8;

 r = amdgpu_ib_schedule(ring, 1, &ib, ((void*)0), &f);
 if (r)
  goto err1;

 r = dma_fence_wait_timeout(f, 0, timeout);
 if (r == 0) {
  DRM_ERROR("amdgpu: IB test timed out\n");
  r = -ETIMEDOUT;
  goto err1;
 } else if (r < 0) {
  DRM_ERROR("amdgpu: fence wait failed (%ld).\n", r);
  goto err1;
 }
 tmp = le32_to_cpu(adev->wb.wb[index]);
 if (tmp == 0xDEADBEEF) {
  DRM_INFO("ib test on ring %d succeeded\n", ring->idx);
  r = 0;
 } else {
  DRM_ERROR("amdgpu: ib test failed (0x%08X)\n", tmp);
  r = -EINVAL;
 }

err1:
 amdgpu_ib_free(adev, &ib, ((void*)0));
 dma_fence_put(f);
err0:
 amdgpu_device_wb_free(adev, index);
 return r;
}
