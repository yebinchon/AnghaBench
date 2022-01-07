
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mmp_pdma_device {int phy_lock; } ;
struct TYPE_3__ {int device; } ;
struct mmp_pdma_chan {TYPE_2__* phy; int drcmr; TYPE_1__ chan; } ;
struct TYPE_4__ {int * vchan; scalar_t__ base; } ;


 scalar_t__ DRCMR (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mmp_pdma_device* to_mmp_pdma_dev (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mmp_pdma_free_phy(struct mmp_pdma_chan *pchan)
{
 struct mmp_pdma_device *pdev = to_mmp_pdma_dev(pchan->chan.device);
 unsigned long flags;
 u32 reg;

 if (!pchan->phy)
  return;


 reg = DRCMR(pchan->drcmr);
 writel(0, pchan->phy->base + reg);

 spin_lock_irqsave(&pdev->phy_lock, flags);
 pchan->phy->vchan = ((void*)0);
 pchan->phy = ((void*)0);
 spin_unlock_irqrestore(&pdev->phy_lock, flags);
}
