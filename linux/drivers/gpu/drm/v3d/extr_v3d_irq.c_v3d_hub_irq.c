
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct v3d_fence {int base; int seqno; } ;
struct v3d_dev {int va_width; int ver; int dev; int drm; TYPE_2__* tfu_job; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int irq_fence; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int ARRAY_SIZE (char const* const*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int V3D_HUB_INT_CLR ;
 int V3D_HUB_INT_MMU_CAP ;
 int V3D_HUB_INT_MMU_PTI ;
 int V3D_HUB_INT_MMU_WRV ;
 int V3D_HUB_INT_STS ;
 int V3D_HUB_INT_TFUC ;
 int V3D_MMU_CTL ;
 int V3D_MMU_CTL_CAP_EXCEEDED ;
 int V3D_MMU_CTL_PT_INVALID ;
 int V3D_MMU_CTL_WRITE_VIOLATION ;
 int V3D_MMU_VIO_ADDR ;
 int V3D_MMU_VIO_ID ;
 int V3D_READ (int ) ;
 int V3D_WRITE (int ,int) ;
 int dev_err (int ,char*,char const*,int,long long,char*,char*,char*) ;
 int dma_fence_signal (int *) ;
 struct v3d_fence* to_v3d_fence (int ) ;
 int trace_v3d_tfu_irq (int *,int ) ;

__attribute__((used)) static irqreturn_t
v3d_hub_irq(int irq, void *arg)
{
 struct v3d_dev *v3d = arg;
 u32 intsts;
 irqreturn_t status = IRQ_NONE;

 intsts = V3D_READ(V3D_HUB_INT_STS);


 V3D_WRITE(V3D_HUB_INT_CLR, intsts);

 if (intsts & V3D_HUB_INT_TFUC) {
  struct v3d_fence *fence =
   to_v3d_fence(v3d->tfu_job->base.irq_fence);

  trace_v3d_tfu_irq(&v3d->drm, fence->seqno);
  dma_fence_signal(&fence->base);
  status = IRQ_HANDLED;
 }

 if (intsts & (V3D_HUB_INT_MMU_WRV |
        V3D_HUB_INT_MMU_PTI |
        V3D_HUB_INT_MMU_CAP)) {
  u32 axi_id = V3D_READ(V3D_MMU_VIO_ID);
  u64 vio_addr = ((u64)V3D_READ(V3D_MMU_VIO_ADDR) <<
    (v3d->va_width - 32));
  static const char *const v3d41_axi_ids[] = {
   "L2T",
   "PTB",
   "PSE",
   "TLB",
   "CLE",
   "TFU",
   "MMU",
   "GMP",
  };
  const char *client = "?";

  V3D_WRITE(V3D_MMU_CTL,
     V3D_READ(V3D_MMU_CTL) & (V3D_MMU_CTL_CAP_EXCEEDED |
         V3D_MMU_CTL_PT_INVALID |
         V3D_MMU_CTL_WRITE_VIOLATION));

  if (v3d->ver >= 41) {
   axi_id = axi_id >> 5;
   if (axi_id < ARRAY_SIZE(v3d41_axi_ids))
    client = v3d41_axi_ids[axi_id];
  }

  dev_err(v3d->dev, "MMU error from client %s (%d) at 0x%llx%s%s%s\n",
   client, axi_id, (long long)vio_addr,
   ((intsts & V3D_HUB_INT_MMU_WRV) ?
    ", write violation" : ""),
   ((intsts & V3D_HUB_INT_MMU_PTI) ?
    ", pte invalid" : ""),
   ((intsts & V3D_HUB_INT_MMU_CAP) ?
    ", cap exceeded" : ""));
  status = IRQ_HANDLED;
 }

 return status;
}
