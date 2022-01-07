
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct v3d_fence {int base; int seqno; } ;
struct v3d_dev {scalar_t__ single_irq_line; int dev; int drm; TYPE_6__* csd_job; TYPE_4__* render_job; TYPE_2__* bin_job; int overflow_mem_work; } ;
typedef scalar_t__ irqreturn_t ;
struct TYPE_11__ {int irq_fence; } ;
struct TYPE_12__ {TYPE_5__ base; } ;
struct TYPE_9__ {int irq_fence; } ;
struct TYPE_10__ {TYPE_3__ base; } ;
struct TYPE_7__ {int irq_fence; } ;
struct TYPE_8__ {TYPE_1__ base; } ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 int V3D_CORE_READ (int ,int ) ;
 int V3D_CORE_WRITE (int ,int ,int) ;
 int V3D_CTL_INT_CLR ;
 int V3D_CTL_INT_STS ;
 int V3D_INT_CSDDONE ;
 int V3D_INT_FLDONE ;
 int V3D_INT_FRDONE ;
 int V3D_INT_GMPV ;
 int V3D_INT_OUTOMEM ;
 int dev_err (int ,char*) ;
 int dma_fence_signal (int *) ;
 int schedule_work (int *) ;
 struct v3d_fence* to_v3d_fence (int ) ;
 int trace_v3d_bcl_irq (int *,int ) ;
 int trace_v3d_csd_irq (int *,int ) ;
 int trace_v3d_rcl_irq (int *,int ) ;
 scalar_t__ v3d_hub_irq (int,void*) ;

__attribute__((used)) static irqreturn_t
v3d_irq(int irq, void *arg)
{
 struct v3d_dev *v3d = arg;
 u32 intsts;
 irqreturn_t status = IRQ_NONE;

 intsts = V3D_CORE_READ(0, V3D_CTL_INT_STS);


 V3D_CORE_WRITE(0, V3D_CTL_INT_CLR, intsts);

 if (intsts & V3D_INT_OUTOMEM) {





  schedule_work(&v3d->overflow_mem_work);
  status = IRQ_HANDLED;
 }

 if (intsts & V3D_INT_FLDONE) {
  struct v3d_fence *fence =
   to_v3d_fence(v3d->bin_job->base.irq_fence);

  trace_v3d_bcl_irq(&v3d->drm, fence->seqno);
  dma_fence_signal(&fence->base);
  status = IRQ_HANDLED;
 }

 if (intsts & V3D_INT_FRDONE) {
  struct v3d_fence *fence =
   to_v3d_fence(v3d->render_job->base.irq_fence);

  trace_v3d_rcl_irq(&v3d->drm, fence->seqno);
  dma_fence_signal(&fence->base);
  status = IRQ_HANDLED;
 }

 if (intsts & V3D_INT_CSDDONE) {
  struct v3d_fence *fence =
   to_v3d_fence(v3d->csd_job->base.irq_fence);

  trace_v3d_csd_irq(&v3d->drm, fence->seqno);
  dma_fence_signal(&fence->base);
  status = IRQ_HANDLED;
 }




 if (intsts & V3D_INT_GMPV)
  dev_err(v3d->dev, "GMP violation\n");




 if (v3d->single_irq_line && status == IRQ_NONE)
  return v3d_hub_irq(irq, arg);

 return status;
}
