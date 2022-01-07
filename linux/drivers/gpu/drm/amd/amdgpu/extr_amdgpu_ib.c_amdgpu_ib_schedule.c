
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_vm {int dummy; } ;
struct TYPE_9__ {int ready; } ;
struct amdgpu_ring {int name; TYPE_5__* funcs; int current_ctx; TYPE_4__ sched; struct amdgpu_device* adev; } ;
struct TYPE_8__ {TYPE_2__* s_fence; } ;
struct amdgpu_job {int preamble_status; int preemption_status; int vmid; int uf_sequence; int uf_addr; int sched_sync; TYPE_3__ base; struct amdgpu_vm* vm; } ;
struct amdgpu_ib {int flags; } ;
struct amdgpu_device {int flags; int dev; } ;
struct TYPE_10__ {int emit_frame_size; unsigned int emit_ib_size; scalar_t__ emit_switch_buffer; scalar_t__ patch_cond_exec; int (* insert_end ) (struct amdgpu_ring*) ;int vmhub; scalar_t__ emit_tmz; scalar_t__ emit_cntxcntl; scalar_t__ emit_hdp_flush; scalar_t__ init_cond_exec; int (* insert_start ) (struct amdgpu_ring*) ;scalar_t__ emit_pipeline_sync; } ;
struct TYPE_6__ {int context; } ;
struct TYPE_7__ {TYPE_1__ scheduled; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 unsigned int AMDGPU_FENCE_FLAG_TC_WB_ONLY ;
 int AMDGPU_HAVE_CTX_SWITCH ;
 int AMDGPU_IB_FLAG_PREAMBLE ;
 int AMDGPU_IB_FLAG_TC_WB_NOT_INVALIDATE ;
 int AMDGPU_PREAMBLE_IB_PRESENT_FIRST ;
 int AMD_IS_APU ;
 int EINVAL ;
 int amdgpu_asic_flush_hdp (struct amdgpu_device*,struct amdgpu_ring*) ;
 int amdgpu_asic_invalidate_hdp (struct amdgpu_device*,struct amdgpu_ring*) ;
 int amdgpu_fence_emit (struct amdgpu_ring*,struct dma_fence**,unsigned int) ;
 int amdgpu_mcbp ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 int amdgpu_ring_emit_cntxcntl (struct amdgpu_ring*,int) ;
 int amdgpu_ring_emit_fence (struct amdgpu_ring*,int ,int ,unsigned int) ;
 int amdgpu_ring_emit_hdp_flush (struct amdgpu_ring*) ;
 int amdgpu_ring_emit_ib (struct amdgpu_ring*,struct amdgpu_job*,struct amdgpu_ib*,int) ;
 int amdgpu_ring_emit_switch_buffer (struct amdgpu_ring*) ;
 int amdgpu_ring_emit_tmz (struct amdgpu_ring*,int) ;
 unsigned int amdgpu_ring_init_cond_exec (struct amdgpu_ring*) ;
 int amdgpu_ring_patch_cond_exec (struct amdgpu_ring*,unsigned int) ;
 int amdgpu_ring_undo (struct amdgpu_ring*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 struct dma_fence* amdgpu_sync_get_fence (int *,int *) ;
 int amdgpu_vm_flush (struct amdgpu_ring*,struct amdgpu_job*,int) ;
 scalar_t__ amdgpu_vm_need_pipeline_sync (struct amdgpu_ring*,struct amdgpu_job*) ;
 int amdgpu_vmid_reset (struct amdgpu_device*,int ,int ) ;
 int dev_err (int ,char*,...) ;
 int dma_fence_put (struct dma_fence*) ;
 int stub1 (struct amdgpu_ring*) ;
 int stub2 (struct amdgpu_ring*) ;
 int trace_amdgpu_ib_pipe_sync (struct amdgpu_job*,struct dma_fence*) ;

int amdgpu_ib_schedule(struct amdgpu_ring *ring, unsigned num_ibs,
         struct amdgpu_ib *ibs, struct amdgpu_job *job,
         struct dma_fence **f)
{
 struct amdgpu_device *adev = ring->adev;
 struct amdgpu_ib *ib = &ibs[0];
 struct dma_fence *tmp = ((void*)0);
 bool skip_preamble, need_ctx_switch;
 unsigned patch_offset = ~0;
 struct amdgpu_vm *vm;
 uint64_t fence_ctx;
 uint32_t status = 0, alloc_size;
 unsigned fence_flags = 0;

 unsigned i;
 int r = 0;
 bool need_pipe_sync = 0;

 if (num_ibs == 0)
  return -EINVAL;


 if (job) {
  vm = job->vm;
  fence_ctx = job->base.s_fence ?
   job->base.s_fence->scheduled.context : 0;
 } else {
  vm = ((void*)0);
  fence_ctx = 0;
 }

 if (!ring->sched.ready) {
  dev_err(adev->dev, "couldn't schedule ib on ring <%s>\n", ring->name);
  return -EINVAL;
 }

 if (vm && !job->vmid) {
  dev_err(adev->dev, "VM IB without ID\n");
  return -EINVAL;
 }

 alloc_size = ring->funcs->emit_frame_size + num_ibs *
  ring->funcs->emit_ib_size;

 r = amdgpu_ring_alloc(ring, alloc_size);
 if (r) {
  dev_err(adev->dev, "scheduling IB failed (%d).\n", r);
  return r;
 }

 need_ctx_switch = ring->current_ctx != fence_ctx;
 if (ring->funcs->emit_pipeline_sync && job &&
     ((tmp = amdgpu_sync_get_fence(&job->sched_sync, ((void*)0))) ||
      (amdgpu_sriov_vf(adev) && need_ctx_switch) ||
      amdgpu_vm_need_pipeline_sync(ring, job))) {
  need_pipe_sync = 1;

  if (tmp)
   trace_amdgpu_ib_pipe_sync(job, tmp);

  dma_fence_put(tmp);
 }

 if (ring->funcs->insert_start)
  ring->funcs->insert_start(ring);

 if (job) {
  r = amdgpu_vm_flush(ring, job, need_pipe_sync);
  if (r) {
   amdgpu_ring_undo(ring);
   return r;
  }
 }

 if (job && ring->funcs->init_cond_exec)
  patch_offset = amdgpu_ring_init_cond_exec(ring);




 {
  if (ring->funcs->emit_hdp_flush)
   amdgpu_ring_emit_hdp_flush(ring);
  else
   amdgpu_asic_flush_hdp(adev, ring);
 }

 if (need_ctx_switch)
  status |= AMDGPU_HAVE_CTX_SWITCH;

 skip_preamble = ring->current_ctx == fence_ctx;
 if (job && ring->funcs->emit_cntxcntl) {
  status |= job->preamble_status;
  status |= job->preemption_status;
  amdgpu_ring_emit_cntxcntl(ring, status);
 }

 for (i = 0; i < num_ibs; ++i) {
  ib = &ibs[i];


  if ((ib->flags & AMDGPU_IB_FLAG_PREAMBLE) &&
      skip_preamble &&
      !(status & AMDGPU_PREAMBLE_IB_PRESENT_FIRST) &&
      !amdgpu_mcbp &&
      !amdgpu_sriov_vf(adev))
   continue;

  amdgpu_ring_emit_ib(ring, job, ib, status);
  status &= ~AMDGPU_HAVE_CTX_SWITCH;
 }

 if (ring->funcs->emit_tmz)
  amdgpu_ring_emit_tmz(ring, 0);




  amdgpu_asic_invalidate_hdp(adev, ring);

 if (ib->flags & AMDGPU_IB_FLAG_TC_WB_NOT_INVALIDATE)
  fence_flags |= AMDGPU_FENCE_FLAG_TC_WB_ONLY;


 if (job && job->uf_addr) {
  amdgpu_ring_emit_fence(ring, job->uf_addr, job->uf_sequence,
           fence_flags | AMDGPU_FENCE_FLAG_64BIT);
 }

 r = amdgpu_fence_emit(ring, f, fence_flags);
 if (r) {
  dev_err(adev->dev, "failed to emit fence (%d)\n", r);
  if (job && job->vmid)
   amdgpu_vmid_reset(adev, ring->funcs->vmhub, job->vmid);
  amdgpu_ring_undo(ring);
  return r;
 }

 if (ring->funcs->insert_end)
  ring->funcs->insert_end(ring);

 if (patch_offset != ~0 && ring->funcs->patch_cond_exec)
  amdgpu_ring_patch_cond_exec(ring, patch_offset);

 ring->current_ctx = fence_ctx;
 if (vm && ring->funcs->emit_switch_buffer)
  amdgpu_ring_emit_switch_buffer(ring);
 amdgpu_ring_commit(ring);
 return 0;
}
