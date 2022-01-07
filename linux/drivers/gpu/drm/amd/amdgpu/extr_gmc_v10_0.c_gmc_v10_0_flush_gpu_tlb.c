
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {TYPE_3__* funcs; } ;
struct amdgpu_job {int vm_needs_flush; TYPE_5__* ibs; int vm_pd_addr; } ;
struct TYPE_9__ {int gtt_window_lock; int entity; int buffer_funcs_enabled; struct amdgpu_ring* buffer_funcs_ring; } ;
struct TYPE_7__ {int bo; } ;
struct amdgpu_device {TYPE_4__ mman; TYPE_2__ gart; scalar_t__ in_gpu_reset; int ib_pool_ready; TYPE_1__* nbio_funcs; } ;
struct TYPE_10__ {int length_dw; int * ptr; } ;
struct TYPE_8__ {int nop; } ;
struct TYPE_6__ {int (* hdp_flush ) (struct amdgpu_device*,int *) ;} ;


 int AMDGPU_FENCE_OWNER_UNDEFINED ;
 scalar_t__ AMDGPU_GFXHUB_0 ;
 scalar_t__ AMDGPU_MMHUB_0 ;
 int BUG_ON (int) ;
 int DRM_ERROR (char*,int) ;
 int amdgpu_gmc_pd_addr (int ) ;
 int amdgpu_job_alloc_with_ib (struct amdgpu_device*,int,struct amdgpu_job**) ;
 int amdgpu_job_free (struct amdgpu_job*) ;
 int amdgpu_job_submit (struct amdgpu_job*,int *,int ,struct dma_fence**) ;
 int amdgpu_ring_pad_ib (struct amdgpu_ring*,TYPE_5__*) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_wait (struct dma_fence*,int) ;
 int gmc_v10_0_flush_vm_hub (struct amdgpu_device*,scalar_t__,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct amdgpu_device*,int *) ;

__attribute__((used)) static void gmc_v10_0_flush_gpu_tlb(struct amdgpu_device *adev, uint32_t vmid,
     uint32_t vmhub, uint32_t flush_type)
{
 struct amdgpu_ring *ring = adev->mman.buffer_funcs_ring;
 struct dma_fence *fence;
 struct amdgpu_job *job;

 int r;


 adev->nbio_funcs->hdp_flush(adev, ((void*)0));

 mutex_lock(&adev->mman.gtt_window_lock);

 if (vmhub == AMDGPU_MMHUB_0) {
  gmc_v10_0_flush_vm_hub(adev, vmid, AMDGPU_MMHUB_0, 0);
  mutex_unlock(&adev->mman.gtt_window_lock);
  return;
 }

 BUG_ON(vmhub != AMDGPU_GFXHUB_0);

 if (!adev->mman.buffer_funcs_enabled ||
     !adev->ib_pool_ready ||
     adev->in_gpu_reset) {
  gmc_v10_0_flush_vm_hub(adev, vmid, AMDGPU_GFXHUB_0, 0);
  mutex_unlock(&adev->mman.gtt_window_lock);
  return;
 }






 r = amdgpu_job_alloc_with_ib(adev, 16 * 4, &job);
 if (r)
  goto error_alloc;

 job->vm_pd_addr = amdgpu_gmc_pd_addr(adev->gart.bo);
 job->vm_needs_flush = 1;
 job->ibs->ptr[job->ibs->length_dw++] = ring->funcs->nop;
 amdgpu_ring_pad_ib(ring, &job->ibs[0]);
 r = amdgpu_job_submit(job, &adev->mman.entity,
         AMDGPU_FENCE_OWNER_UNDEFINED, &fence);
 if (r)
  goto error_submit;

 mutex_unlock(&adev->mman.gtt_window_lock);

 dma_fence_wait(fence, 0);
 dma_fence_put(fence);

 return;

error_submit:
 amdgpu_job_free(job);

error_alloc:
 mutex_unlock(&adev->mman.gtt_window_lock);
 DRM_ERROR("Error flushing GPU TLB using the SDMA (%d)!\n", r);
}
