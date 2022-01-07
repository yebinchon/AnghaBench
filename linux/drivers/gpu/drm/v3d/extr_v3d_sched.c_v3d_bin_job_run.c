
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct v3d_dev {int job_lock; struct v3d_bin_job* bin_job; struct drm_device drm; } ;
struct TYPE_8__ {TYPE_2__* s_fence; } ;
struct TYPE_9__ {scalar_t__ irq_fence; TYPE_3__ base; struct v3d_dev* v3d; } ;
struct v3d_bin_job {int start; int end; int qma; int qms; int qts; TYPE_4__ base; } ;
struct drm_sched_job {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_10__ {int seqno; } ;
struct TYPE_6__ {int error; } ;
struct TYPE_7__ {TYPE_1__ finished; } ;


 scalar_t__ IS_ERR (struct dma_fence*) ;
 int V3D_BIN ;
 int V3D_CLE_CT0QBA ;
 int V3D_CLE_CT0QEA ;
 int V3D_CLE_CT0QMA ;
 int V3D_CLE_CT0QMS ;
 int V3D_CLE_CT0QTS ;
 int V3D_CLE_CT0QTS_ENABLE ;
 int V3D_CORE_WRITE (int ,int ,int) ;
 int V3D_PTB_BPOS ;
 scalar_t__ dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct v3d_bin_job* to_bin_job (struct drm_sched_job*) ;
 TYPE_5__* to_v3d_fence (struct dma_fence*) ;
 int trace_v3d_submit_cl (struct drm_device*,int,int ,int,int) ;
 scalar_t__ unlikely (int ) ;
 struct dma_fence* v3d_fence_create (struct v3d_dev*,int ) ;
 int v3d_invalidate_caches (struct v3d_dev*) ;

__attribute__((used)) static struct dma_fence *v3d_bin_job_run(struct drm_sched_job *sched_job)
{
 struct v3d_bin_job *job = to_bin_job(sched_job);
 struct v3d_dev *v3d = job->base.v3d;
 struct drm_device *dev = &v3d->drm;
 struct dma_fence *fence;
 unsigned long irqflags;

 if (unlikely(job->base.base.s_fence->finished.error))
  return ((void*)0);




 spin_lock_irqsave(&v3d->job_lock, irqflags);
 v3d->bin_job = job;



 V3D_CORE_WRITE(0, V3D_PTB_BPOS, 0);
 spin_unlock_irqrestore(&v3d->job_lock, irqflags);

 v3d_invalidate_caches(v3d);

 fence = v3d_fence_create(v3d, V3D_BIN);
 if (IS_ERR(fence))
  return ((void*)0);

 if (job->base.irq_fence)
  dma_fence_put(job->base.irq_fence);
 job->base.irq_fence = dma_fence_get(fence);

 trace_v3d_submit_cl(dev, 0, to_v3d_fence(fence)->seqno,
       job->start, job->end);




 if (job->qma) {
  V3D_CORE_WRITE(0, V3D_CLE_CT0QMA, job->qma);
  V3D_CORE_WRITE(0, V3D_CLE_CT0QMS, job->qms);
 }
 if (job->qts) {
  V3D_CORE_WRITE(0, V3D_CLE_CT0QTS,
          V3D_CLE_CT0QTS_ENABLE |
          job->qts);
 }
 V3D_CORE_WRITE(0, V3D_CLE_CT0QBA, job->start);
 V3D_CORE_WRITE(0, V3D_CLE_CT0QEA, job->end);

 return fence;
}
