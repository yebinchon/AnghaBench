
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_2__ {int * wb; scalar_t__ gpu_addr; } ;
struct amdgpu_device {unsigned int usec_timeout; TYPE_1__ wb; } ;


 int ETIMEDOUT ;
 int SDMA_OP_WRITE ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int SDMA_PKT_HEADER_SUB_OP (int ) ;
 int SDMA_PKT_WRITE_UNTILED_DW_3_COUNT (int) ;
 int SDMA_SUBOP_WRITE_LINEAR ;
 int amdgpu_device_wb_free (struct amdgpu_device*,unsigned int) ;
 int amdgpu_device_wb_get (struct amdgpu_device*,unsigned int*) ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int lower_32_bits (scalar_t__) ;
 int udelay (int) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int sdma_v2_4_ring_test_ring(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 unsigned i;
 unsigned index;
 int r;
 u32 tmp;
 u64 gpu_addr;

 r = amdgpu_device_wb_get(adev, &index);
 if (r)
  return r;

 gpu_addr = adev->wb.gpu_addr + (index * 4);
 tmp = 0xCAFEDEAD;
 adev->wb.wb[index] = cpu_to_le32(tmp);

 r = amdgpu_ring_alloc(ring, 5);
 if (r)
  goto error_free_wb;

 amdgpu_ring_write(ring, SDMA_PKT_HEADER_OP(SDMA_OP_WRITE) |
     SDMA_PKT_HEADER_SUB_OP(SDMA_SUBOP_WRITE_LINEAR));
 amdgpu_ring_write(ring, lower_32_bits(gpu_addr));
 amdgpu_ring_write(ring, upper_32_bits(gpu_addr));
 amdgpu_ring_write(ring, SDMA_PKT_WRITE_UNTILED_DW_3_COUNT(1));
 amdgpu_ring_write(ring, 0xDEADBEEF);
 amdgpu_ring_commit(ring);

 for (i = 0; i < adev->usec_timeout; i++) {
  tmp = le32_to_cpu(adev->wb.wb[index]);
  if (tmp == 0xDEADBEEF)
   break;
  udelay(1);
 }

 if (i >= adev->usec_timeout)
  r = -ETIMEDOUT;

error_free_wb:
 amdgpu_device_wb_free(adev, index);
 return r;
}
