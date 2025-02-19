
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_ib {int* ptr; int length_dw; } ;
struct TYPE_2__ {int* wb; scalar_t__ gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; } ;
typedef int ib ;


 long EINVAL ;
 long ETIMEDOUT ;
 int PACKET3 (int ,int) ;
 int PACKET3_WRITE_DATA ;
 int WRITE_DATA_DST_SEL (int) ;
 int WR_CONFIRM ;
 int amdgpu_device_wb_free (struct amdgpu_device*,unsigned int) ;
 long amdgpu_device_wb_get (struct amdgpu_device*,unsigned int*) ;
 int amdgpu_ib_free (struct amdgpu_device*,struct amdgpu_ib*,int *) ;
 long amdgpu_ib_get (struct amdgpu_device*,int *,int,struct amdgpu_ib*) ;
 long amdgpu_ib_schedule (struct amdgpu_ring*,int,struct amdgpu_ib*,int *,struct dma_fence**) ;
 int cpu_to_le32 (int) ;
 int dma_fence_put (struct dma_fence*) ;
 long dma_fence_wait_timeout (struct dma_fence*,int,long) ;
 int lower_32_bits (scalar_t__) ;
 int memset (struct amdgpu_ib*,int ,int) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int gfx_v9_0_ring_test_ib(struct amdgpu_ring *ring, long timeout)
{
 struct amdgpu_device *adev = ring->adev;
 struct amdgpu_ib ib;
 struct dma_fence *f = ((void*)0);

 unsigned index;
 uint64_t gpu_addr;
 uint32_t tmp;
 long r;

 r = amdgpu_device_wb_get(adev, &index);
 if (r)
  return r;

 gpu_addr = adev->wb.gpu_addr + (index * 4);
 adev->wb.wb[index] = cpu_to_le32(0xCAFEDEAD);
 memset(&ib, 0, sizeof(ib));
 r = amdgpu_ib_get(adev, ((void*)0), 16, &ib);
 if (r)
  goto err1;

 ib.ptr[0] = PACKET3(PACKET3_WRITE_DATA, 3);
 ib.ptr[1] = WRITE_DATA_DST_SEL(5) | WR_CONFIRM;
 ib.ptr[2] = lower_32_bits(gpu_addr);
 ib.ptr[3] = upper_32_bits(gpu_addr);
 ib.ptr[4] = 0xDEADBEEF;
 ib.length_dw = 5;

 r = amdgpu_ib_schedule(ring, 1, &ib, ((void*)0), &f);
 if (r)
  goto err2;

 r = dma_fence_wait_timeout(f, 0, timeout);
 if (r == 0) {
  r = -ETIMEDOUT;
  goto err2;
 } else if (r < 0) {
  goto err2;
 }

 tmp = adev->wb.wb[index];
 if (tmp == 0xDEADBEEF)
  r = 0;
 else
  r = -EINVAL;

err2:
 amdgpu_ib_free(adev, &ib, ((void*)0));
 dma_fence_put(f);
err1:
 amdgpu_device_wb_free(adev, index);
 return r;
}
