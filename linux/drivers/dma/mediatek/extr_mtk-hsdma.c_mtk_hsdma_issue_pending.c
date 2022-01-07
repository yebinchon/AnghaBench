
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct mtk_hsdma_vchan {TYPE_1__ vc; } ;
struct mtk_hsdma_device {int dummy; } ;
struct dma_chan {int dummy; } ;


 int mtk_hsdma_issue_vchan_pending (struct mtk_hsdma_device*,struct mtk_hsdma_vchan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mtk_hsdma_device* to_hsdma_dev (struct dma_chan*) ;
 struct mtk_hsdma_vchan* to_hsdma_vchan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void mtk_hsdma_issue_pending(struct dma_chan *c)
{
 struct mtk_hsdma_device *hsdma = to_hsdma_dev(c);
 struct mtk_hsdma_vchan *hvc = to_hsdma_vchan(c);
 unsigned long flags;

 spin_lock_irqsave(&hvc->vc.lock, flags);

 if (vchan_issue_pending(&hvc->vc))
  mtk_hsdma_issue_vchan_pending(hsdma, hvc);

 spin_unlock_irqrestore(&hvc->vc.lock, flags);
}
