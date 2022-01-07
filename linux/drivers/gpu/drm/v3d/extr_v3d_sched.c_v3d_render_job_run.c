
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* s_fence; } ;
struct TYPE_9__ {scalar_t__ irq_fence; TYPE_3__ base; struct v3d_dev* v3d; } ;
struct v3d_render_job {int end; int start; TYPE_4__ base; } ;
struct drm_device {int dummy; } ;
struct v3d_dev {struct v3d_render_job* render_job; struct drm_device drm; } ;
struct drm_sched_job {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_10__ {int seqno; } ;
struct TYPE_6__ {int error; } ;
struct TYPE_7__ {TYPE_1__ finished; } ;


 scalar_t__ IS_ERR (struct dma_fence*) ;
 int V3D_CLE_CT1QBA ;
 int V3D_CLE_CT1QEA ;
 int V3D_CORE_WRITE (int ,int ,int ) ;
 int V3D_RENDER ;
 scalar_t__ dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (scalar_t__) ;
 struct v3d_render_job* to_render_job (struct drm_sched_job*) ;
 TYPE_5__* to_v3d_fence (struct dma_fence*) ;
 int trace_v3d_submit_cl (struct drm_device*,int,int ,int ,int ) ;
 scalar_t__ unlikely (int ) ;
 struct dma_fence* v3d_fence_create (struct v3d_dev*,int ) ;
 int v3d_invalidate_caches (struct v3d_dev*) ;

__attribute__((used)) static struct dma_fence *v3d_render_job_run(struct drm_sched_job *sched_job)
{
 struct v3d_render_job *job = to_render_job(sched_job);
 struct v3d_dev *v3d = job->base.v3d;
 struct drm_device *dev = &v3d->drm;
 struct dma_fence *fence;

 if (unlikely(job->base.base.s_fence->finished.error))
  return ((void*)0);

 v3d->render_job = job;







 v3d_invalidate_caches(v3d);

 fence = v3d_fence_create(v3d, V3D_RENDER);
 if (IS_ERR(fence))
  return ((void*)0);

 if (job->base.irq_fence)
  dma_fence_put(job->base.irq_fence);
 job->base.irq_fence = dma_fence_get(fence);

 trace_v3d_submit_cl(dev, 1, to_v3d_fence(fence)->seqno,
       job->start, job->end);






 V3D_CORE_WRITE(0, V3D_CLE_CT1QBA, job->start);
 V3D_CORE_WRITE(0, V3D_CLE_CT1QEA, job->end);

 return fence;
}
