
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct mbox_chan {struct flexrm_ring* con_priv; } ;
struct flexrm_ring {int irq_requested; int * bd_base; int bd_dma_base; TYPE_1__* mbox; int * cmpl_base; int cmpl_dma_base; int irq; int requests_bmap; struct brcm_message** requests; int num; scalar_t__ regs; } ;
struct brcm_message {int error; } ;
struct TYPE_2__ {int bd_pool; int cmpl_pool; int dev; } ;


 int BIT (int ) ;
 int CONTROL_FLUSH_SHIFT ;
 int EIO ;
 int FLUSH_DONE_MASK ;
 scalar_t__ RING_CONTROL ;
 scalar_t__ RING_FLUSH_DONE ;
 size_t RING_MAX_REQ_COUNT ;
 int bitmap_zero (int ,size_t) ;
 int dev_err (int ,char*,int ) ;
 int dma_pool_free (int ,int *,int ) ;
 int flexrm_dma_unmap (int ,struct brcm_message*) ;
 int free_irq (int ,struct flexrm_ring*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int mbox_chan_received_data (struct mbox_chan*,struct brcm_message*) ;
 int mdelay (int) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void flexrm_shutdown(struct mbox_chan *chan)
{
 u32 reqid;
 unsigned int timeout;
 struct brcm_message *msg;
 struct flexrm_ring *ring = chan->con_priv;


 writel_relaxed(0x0, ring->regs + RING_CONTROL);


 timeout = 1000;
 writel_relaxed(BIT(CONTROL_FLUSH_SHIFT),
   ring->regs + RING_CONTROL);
 do {
  if (readl_relaxed(ring->regs + RING_FLUSH_DONE) &
      FLUSH_DONE_MASK)
   break;
  mdelay(1);
 } while (--timeout);
 if (!timeout)
  dev_err(ring->mbox->dev,
   "setting ring%d flush state timedout\n", ring->num);


 timeout = 1000;
 writel_relaxed(0x0, ring->regs + RING_CONTROL);
 do {
  if (!(readl_relaxed(ring->regs + RING_FLUSH_DONE) &
        FLUSH_DONE_MASK))
   break;
  mdelay(1);
 } while (--timeout);
 if (!timeout)
  dev_err(ring->mbox->dev,
   "clearing ring%d flush state timedout\n", ring->num);


 for (reqid = 0; reqid < RING_MAX_REQ_COUNT; reqid++) {
  msg = ring->requests[reqid];
  if (!msg)
   continue;


  ring->requests[reqid] = ((void*)0);


  flexrm_dma_unmap(ring->mbox->dev, msg);


  msg->error = -EIO;
  mbox_chan_received_data(chan, msg);
 }


 bitmap_zero(ring->requests_bmap, RING_MAX_REQ_COUNT);


 if (ring->irq_requested) {
  irq_set_affinity_hint(ring->irq, ((void*)0));
  free_irq(ring->irq, ring);
  ring->irq_requested = 0;
 }


 if (ring->cmpl_base) {
  dma_pool_free(ring->mbox->cmpl_pool,
         ring->cmpl_base, ring->cmpl_dma_base);
  ring->cmpl_base = ((void*)0);
 }


 if (ring->bd_base) {
  dma_pool_free(ring->mbox->bd_pool,
         ring->bd_base, ring->bd_dma_base);
  ring->bd_base = ((void*)0);
 }
}
