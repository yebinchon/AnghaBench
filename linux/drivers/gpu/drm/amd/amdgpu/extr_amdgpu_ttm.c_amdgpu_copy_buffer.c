
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_7__ {int ready; } ;
struct amdgpu_ring {TYPE_1__ sched; struct amdgpu_device* adev; } ;
struct amdgpu_job {int vm_needs_flush; TYPE_5__* ibs; int sync; int vm_pd_addr; } ;
struct TYPE_10__ {int entity; TYPE_2__* buffer_funcs; } ;
struct TYPE_9__ {int bo; } ;
struct amdgpu_device {TYPE_4__ mman; TYPE_3__ gart; } ;
struct TYPE_11__ {unsigned int length_dw; } ;
struct TYPE_8__ {unsigned int copy_num_dw; scalar_t__ copy_max_bytes; } ;


 int AMDGPU_FENCE_OWNER_UNDEFINED ;
 unsigned int DIV_ROUND_UP (scalar_t__,scalar_t__) ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int WARN_ON (int) ;
 int amdgpu_emit_copy_buffer (struct amdgpu_device*,TYPE_5__*,int ,int ,scalar_t__) ;
 int amdgpu_gmc_pd_addr (int ) ;
 int amdgpu_job_alloc_with_ib (struct amdgpu_device*,unsigned int,struct amdgpu_job**) ;
 int amdgpu_job_free (struct amdgpu_job*) ;
 int amdgpu_job_submit (struct amdgpu_job*,int *,int ,struct dma_fence**) ;
 int amdgpu_job_submit_direct (struct amdgpu_job*,struct amdgpu_ring*,struct dma_fence**) ;
 int amdgpu_ring_pad_ib (struct amdgpu_ring*,TYPE_5__*) ;
 int amdgpu_sync_resv (struct amdgpu_device*,int *,struct dma_resv*,int ,int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

int amdgpu_copy_buffer(struct amdgpu_ring *ring, uint64_t src_offset,
         uint64_t dst_offset, uint32_t byte_count,
         struct dma_resv *resv,
         struct dma_fence **fence, bool direct_submit,
         bool vm_needs_flush)
{
 struct amdgpu_device *adev = ring->adev;
 struct amdgpu_job *job;

 uint32_t max_bytes;
 unsigned num_loops, num_dw;
 unsigned i;
 int r;

 if (direct_submit && !ring->sched.ready) {
  DRM_ERROR("Trying to move memory with ring turned off.\n");
  return -EINVAL;
 }

 max_bytes = adev->mman.buffer_funcs->copy_max_bytes;
 num_loops = DIV_ROUND_UP(byte_count, max_bytes);
 num_dw = num_loops * adev->mman.buffer_funcs->copy_num_dw;


 while (num_dw & 0x7)
  num_dw++;

 r = amdgpu_job_alloc_with_ib(adev, num_dw * 4, &job);
 if (r)
  return r;

 if (vm_needs_flush) {
  job->vm_pd_addr = amdgpu_gmc_pd_addr(adev->gart.bo);
  job->vm_needs_flush = 1;
 }
 if (resv) {
  r = amdgpu_sync_resv(adev, &job->sync, resv,
         AMDGPU_FENCE_OWNER_UNDEFINED,
         0);
  if (r) {
   DRM_ERROR("sync failed (%d).\n", r);
   goto error_free;
  }
 }

 for (i = 0; i < num_loops; i++) {
  uint32_t cur_size_in_bytes = min(byte_count, max_bytes);

  amdgpu_emit_copy_buffer(adev, &job->ibs[0], src_offset,
     dst_offset, cur_size_in_bytes);

  src_offset += cur_size_in_bytes;
  dst_offset += cur_size_in_bytes;
  byte_count -= cur_size_in_bytes;
 }

 amdgpu_ring_pad_ib(ring, &job->ibs[0]);
 WARN_ON(job->ibs[0].length_dw > num_dw);
 if (direct_submit)
  r = amdgpu_job_submit_direct(job, ring, fence);
 else
  r = amdgpu_job_submit(job, &adev->mman.entity,
          AMDGPU_FENCE_OWNER_UNDEFINED, fence);
 if (r)
  goto error_free;

 return r;

error_free:
 amdgpu_job_free(job);
 DRM_ERROR("Error scheduling IBs (%d)\n", r);
 return r;
}
