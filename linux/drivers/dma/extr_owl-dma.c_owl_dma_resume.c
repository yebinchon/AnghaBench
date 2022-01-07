
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct owl_dma_vchan {TYPE_1__ vc; int pchan; int txd; } ;
struct dma_chan {int dummy; } ;


 int chan2dev (struct dma_chan*) ;
 int dev_dbg (int ,char*,TYPE_1__*) ;
 int owl_dma_resume_pchan (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct owl_dma_vchan* to_owl_vchan (struct dma_chan*) ;

__attribute__((used)) static int owl_dma_resume(struct dma_chan *chan)
{
 struct owl_dma_vchan *vchan = to_owl_vchan(chan);
 unsigned long flags;

 if (!vchan->pchan && !vchan->txd)
  return 0;

 dev_dbg(chan2dev(chan), "vchan %p: resume\n", &vchan->vc);

 spin_lock_irqsave(&vchan->vc.lock, flags);

 owl_dma_resume_pchan(vchan->pchan);

 spin_unlock_irqrestore(&vchan->vc.lock, flags);

 return 0;
}
