
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int channels; } ;
struct ioatdma_device {struct ioatdma_chan** idx; scalar_t__ reg_base; struct dma_device dma_dev; } ;
struct dma_chan {int device_node; struct dma_device* device; } ;
struct ioatdma_chan {int cleanup_task; int timer; struct dma_chan dma_chan; int cleanup_lock; scalar_t__ reg_base; struct ioatdma_device* ioat_dma; } ;


 int dma_cookie_init (struct dma_chan*) ;
 int ioat_cleanup_event ;
 int ioat_timer_event ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void
ioat_init_channel(struct ioatdma_device *ioat_dma,
    struct ioatdma_chan *ioat_chan, int idx)
{
 struct dma_device *dma = &ioat_dma->dma_dev;
 struct dma_chan *c = &ioat_chan->dma_chan;
 unsigned long data = (unsigned long) c;

 ioat_chan->ioat_dma = ioat_dma;
 ioat_chan->reg_base = ioat_dma->reg_base + (0x80 * (idx + 1));
 spin_lock_init(&ioat_chan->cleanup_lock);
 ioat_chan->dma_chan.device = dma;
 dma_cookie_init(&ioat_chan->dma_chan);
 list_add_tail(&ioat_chan->dma_chan.device_node, &dma->channels);
 ioat_dma->idx[idx] = ioat_chan;
 timer_setup(&ioat_chan->timer, ioat_timer_event, 0);
 tasklet_init(&ioat_chan->cleanup_task, ioat_cleanup_event, data);
}
