
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_job {struct amdgpu_ib* ibs; } ;
struct amdgpu_ib {int* ptr; int length_dw; } ;
struct TYPE_3__ {int jpeg_pitch; } ;
struct TYPE_4__ {TYPE_1__ internal; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;


 void* PACKETJ (int ,int ,int ,int ) ;
 int PACKETJ_TYPE0 ;
 int PACKETJ_TYPE6 ;
 int amdgpu_job_alloc_with_ib (struct amdgpu_device*,unsigned int const,struct amdgpu_job**) ;
 int amdgpu_job_free (struct amdgpu_job*) ;
 int amdgpu_job_submit_direct (struct amdgpu_job*,struct amdgpu_ring*,struct dma_fence**) ;
 struct dma_fence* dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;

__attribute__((used)) static int amdgpu_vcn_jpeg_set_reg(struct amdgpu_ring *ring, uint32_t handle,
  struct dma_fence **fence)
{
 struct amdgpu_device *adev = ring->adev;
 struct amdgpu_job *job;
 struct amdgpu_ib *ib;
 struct dma_fence *f = ((void*)0);
 const unsigned ib_size_dw = 16;
 int i, r;

 r = amdgpu_job_alloc_with_ib(ring->adev, ib_size_dw * 4, &job);
 if (r)
  return r;

 ib = &job->ibs[0];

 ib->ptr[0] = PACKETJ(adev->vcn.internal.jpeg_pitch, 0, 0, PACKETJ_TYPE0);
 ib->ptr[1] = 0xDEADBEEF;
 for (i = 2; i < 16; i += 2) {
  ib->ptr[i] = PACKETJ(0, 0, 0, PACKETJ_TYPE6);
  ib->ptr[i+1] = 0;
 }
 ib->length_dw = 16;

 r = amdgpu_job_submit_direct(job, ring, &f);
 if (r)
  goto err;

 if (fence)
  *fence = dma_fence_get(f);
 dma_fence_put(f);

 return 0;

err:
 amdgpu_job_free(job);
 return r;
}
