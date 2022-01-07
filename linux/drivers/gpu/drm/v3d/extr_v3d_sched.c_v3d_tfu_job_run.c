
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int iia; int iis; int ica; int iua; int ioa; int ios; int* coef; int icfg; } ;
struct TYPE_4__ {scalar_t__ irq_fence; struct v3d_dev* v3d; } ;
struct v3d_tfu_job {TYPE_2__ args; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct v3d_dev {struct v3d_tfu_job* tfu_job; struct drm_device drm; } ;
struct drm_sched_job {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_6__ {int seqno; } ;


 scalar_t__ IS_ERR (struct dma_fence*) ;
 int V3D_TFU ;
 int V3D_TFU_COEF0 ;
 int V3D_TFU_COEF0_USECOEF ;
 int V3D_TFU_COEF1 ;
 int V3D_TFU_COEF2 ;
 int V3D_TFU_COEF3 ;
 int V3D_TFU_ICA ;
 int V3D_TFU_ICFG ;
 int V3D_TFU_ICFG_IOC ;
 int V3D_TFU_IIA ;
 int V3D_TFU_IIS ;
 int V3D_TFU_IOA ;
 int V3D_TFU_IOS ;
 int V3D_TFU_IUA ;
 int V3D_WRITE (int ,int) ;
 scalar_t__ dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (scalar_t__) ;
 struct v3d_tfu_job* to_tfu_job (struct drm_sched_job*) ;
 TYPE_3__* to_v3d_fence (struct dma_fence*) ;
 int trace_v3d_submit_tfu (struct drm_device*,int ) ;
 struct dma_fence* v3d_fence_create (struct v3d_dev*,int ) ;

__attribute__((used)) static struct dma_fence *
v3d_tfu_job_run(struct drm_sched_job *sched_job)
{
 struct v3d_tfu_job *job = to_tfu_job(sched_job);
 struct v3d_dev *v3d = job->base.v3d;
 struct drm_device *dev = &v3d->drm;
 struct dma_fence *fence;

 fence = v3d_fence_create(v3d, V3D_TFU);
 if (IS_ERR(fence))
  return ((void*)0);

 v3d->tfu_job = job;
 if (job->base.irq_fence)
  dma_fence_put(job->base.irq_fence);
 job->base.irq_fence = dma_fence_get(fence);

 trace_v3d_submit_tfu(dev, to_v3d_fence(fence)->seqno);

 V3D_WRITE(V3D_TFU_IIA, job->args.iia);
 V3D_WRITE(V3D_TFU_IIS, job->args.iis);
 V3D_WRITE(V3D_TFU_ICA, job->args.ica);
 V3D_WRITE(V3D_TFU_IUA, job->args.iua);
 V3D_WRITE(V3D_TFU_IOA, job->args.ioa);
 V3D_WRITE(V3D_TFU_IOS, job->args.ios);
 V3D_WRITE(V3D_TFU_COEF0, job->args.coef[0]);
 if (job->args.coef[0] & V3D_TFU_COEF0_USECOEF) {
  V3D_WRITE(V3D_TFU_COEF1, job->args.coef[1]);
  V3D_WRITE(V3D_TFU_COEF2, job->args.coef[2]);
  V3D_WRITE(V3D_TFU_COEF3, job->args.coef[3]);
 }

 V3D_WRITE(V3D_TFU_ICFG, job->args.icfg | V3D_TFU_ICFG_IOC);

 return fence;
}
