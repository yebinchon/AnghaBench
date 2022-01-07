
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int prep_lock; } ;
struct dma_chan {int dummy; } ;


 int __ioat_issue_pending (struct ioatdma_chan*) ;
 scalar_t__ ioat_ring_pending (struct ioatdma_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ioatdma_chan* to_ioat_chan (struct dma_chan*) ;

void ioat_issue_pending(struct dma_chan *c)
{
 struct ioatdma_chan *ioat_chan = to_ioat_chan(c);

 if (ioat_ring_pending(ioat_chan)) {
  spin_lock_bh(&ioat_chan->prep_lock);
  __ioat_issue_pending(ioat_chan);
  spin_unlock_bh(&ioat_chan->prep_lock);
 }
}
