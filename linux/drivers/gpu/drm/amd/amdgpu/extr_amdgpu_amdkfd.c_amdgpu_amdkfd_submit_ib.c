
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* uint32_t ;
struct kgd_dev {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_job {void* vmid; struct amdgpu_ib* ibs; } ;
struct amdgpu_ib {void** ptr; void* length_dw; int gpu_addr; } ;
struct TYPE_6__ {TYPE_2__* instance; } ;
struct TYPE_4__ {struct amdgpu_ring* compute_ring; } ;
struct amdgpu_device {TYPE_3__ sdma; TYPE_1__ gfx; } ;
typedef enum kgd_engine_type { ____Placeholder_kgd_engine_type } kgd_engine_type ;
struct TYPE_5__ {struct amdgpu_ring ring; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;



 int amdgpu_ib_schedule (struct amdgpu_ring*,int,struct amdgpu_ib*,struct amdgpu_job*,struct dma_fence**) ;
 int amdgpu_job_alloc (struct amdgpu_device*,int,struct amdgpu_job**,int *) ;
 int amdgpu_job_free (struct amdgpu_job*) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_wait (struct dma_fence*,int) ;
 int memset (struct amdgpu_ib*,int ,int) ;
 int pr_err (char*,int) ;

int amdgpu_amdkfd_submit_ib(struct kgd_dev *kgd, enum kgd_engine_type engine,
    uint32_t vmid, uint64_t gpu_addr,
    uint32_t *ib_cmd, uint32_t ib_len)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;
 struct amdgpu_job *job;
 struct amdgpu_ib *ib;
 struct amdgpu_ring *ring;
 struct dma_fence *f = ((void*)0);
 int ret;

 switch (engine) {
 case 130:
  ring = &adev->gfx.compute_ring[0];
  break;
 case 129:
  ring = &adev->sdma.instance[0].ring;
  break;
 case 128:
  ring = &adev->sdma.instance[1].ring;
  break;
 default:
  pr_err("Invalid engine in IB submission: %d\n", engine);
  ret = -EINVAL;
  goto err;
 }

 ret = amdgpu_job_alloc(adev, 1, &job, ((void*)0));
 if (ret)
  goto err;

 ib = &job->ibs[0];
 memset(ib, 0, sizeof(struct amdgpu_ib));

 ib->gpu_addr = gpu_addr;
 ib->ptr = ib_cmd;
 ib->length_dw = ib_len;

 job->vmid = vmid;

 ret = amdgpu_ib_schedule(ring, 1, ib, job, &f);
 if (ret) {
  DRM_ERROR("amdgpu: failed to schedule IB.\n");
  goto err_ib_sched;
 }

 ret = dma_fence_wait(f, 0);

err_ib_sched:
 dma_fence_put(f);
 amdgpu_job_free(job);
err:
 return ret;
}
