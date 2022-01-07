
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct st_fdma_chan {TYPE_1__ vchan; int fdesc; } ;
struct dma_chan {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int st_fdma_xfer_desc (struct st_fdma_chan*) ;
 struct st_fdma_chan* to_st_fdma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void st_fdma_issue_pending(struct dma_chan *chan)
{
 struct st_fdma_chan *fchan = to_st_fdma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&fchan->vchan.lock, flags);

 if (vchan_issue_pending(&fchan->vchan) && !fchan->fdesc)
  st_fdma_xfer_desc(fchan);

 spin_unlock_irqrestore(&fchan->vchan.lock, flags);
}
