
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct etnaviv_gpu {int sync_point_event; int completed_fence; TYPE_1__* event; int sync_point_work; int wq; int dev; } ;
struct dma_fence {int seqno; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct dma_fence* fence; scalar_t__ sync_point; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VIVS_HI_INTR_ACKNOWLEDGE ;
 int VIVS_HI_INTR_ACKNOWLEDGE_AXI_BUS_ERROR ;
 int VIVS_HI_INTR_ACKNOWLEDGE_MMU_EXCEPTION ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int dma_fence_signal (struct dma_fence*) ;
 int dump_mmu_fault (struct etnaviv_gpu*) ;
 int event_free (struct etnaviv_gpu*,int) ;
 scalar_t__ fence_after (int ,int ) ;
 int ffs (int) ;
 int gpu_read (struct etnaviv_gpu*,int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t irq_handler(int irq, void *data)
{
 struct etnaviv_gpu *gpu = data;
 irqreturn_t ret = IRQ_NONE;

 u32 intr = gpu_read(gpu, VIVS_HI_INTR_ACKNOWLEDGE);

 if (intr != 0) {
  int event;

  pm_runtime_mark_last_busy(gpu->dev);

  dev_dbg(gpu->dev, "intr 0x%08x\n", intr);

  if (intr & VIVS_HI_INTR_ACKNOWLEDGE_AXI_BUS_ERROR) {
   dev_err(gpu->dev, "AXI bus error\n");
   intr &= ~VIVS_HI_INTR_ACKNOWLEDGE_AXI_BUS_ERROR;
  }

  if (intr & VIVS_HI_INTR_ACKNOWLEDGE_MMU_EXCEPTION) {
   dump_mmu_fault(gpu);
   intr &= ~VIVS_HI_INTR_ACKNOWLEDGE_MMU_EXCEPTION;
  }

  while ((event = ffs(intr)) != 0) {
   struct dma_fence *fence;

   event -= 1;

   intr &= ~(1 << event);

   dev_dbg(gpu->dev, "event %u\n", event);

   if (gpu->event[event].sync_point) {
    gpu->sync_point_event = event;
    queue_work(gpu->wq, &gpu->sync_point_work);
   }

   fence = gpu->event[event].fence;
   if (!fence)
    continue;

   gpu->event[event].fence = ((void*)0);
   if (fence_after(fence->seqno, gpu->completed_fence))
    gpu->completed_fence = fence->seqno;
   dma_fence_signal(fence);

   event_free(gpu, event);
  }

  ret = IRQ_HANDLED;
 }

 return ret;
}
