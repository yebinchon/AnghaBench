
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmp_pdma_phy {struct mmp_pdma_chan* vchan; } ;
struct mmp_pdma_device {int dma_channels; int phy_lock; struct mmp_pdma_phy* phy; } ;
struct TYPE_2__ {int device; } ;
struct mmp_pdma_chan {TYPE_1__ chan; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mmp_pdma_device* to_mmp_pdma_dev (int ) ;

__attribute__((used)) static struct mmp_pdma_phy *lookup_phy(struct mmp_pdma_chan *pchan)
{
 int prio, i;
 struct mmp_pdma_device *pdev = to_mmp_pdma_dev(pchan->chan.device);
 struct mmp_pdma_phy *phy, *found = ((void*)0);
 unsigned long flags;
 spin_lock_irqsave(&pdev->phy_lock, flags);
 for (prio = 0; prio <= ((pdev->dma_channels - 1) & 0xf) >> 2; prio++) {
  for (i = 0; i < pdev->dma_channels; i++) {
   if (prio != (i & 0xf) >> 2)
    continue;
   phy = &pdev->phy[i];
   if (!phy->vchan) {
    phy->vchan = pchan;
    found = phy;
    goto out_unlock;
   }
  }
 }

out_unlock:
 spin_unlock_irqrestore(&pdev->phy_lock, flags);
 return found;
}
