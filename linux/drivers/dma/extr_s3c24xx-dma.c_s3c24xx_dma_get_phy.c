
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s3c24xx_dma_phy {struct s3c24xx_dma_chan* serving; int id; int clk; int lock; int valid; } ;
struct s3c24xx_dma_engine {TYPE_3__* pdev; TYPE_2__* sdata; TYPE_1__* pdata; struct s3c24xx_dma_phy* phy_chans; } ;
struct s3c24xx_dma_chan {struct s3c24xx_dma_engine* host; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ has_clocks; } ;
struct TYPE_4__ {int num_phy_channels; } ;


 int clk_enable (int ) ;
 int dev_err (int *,char*,int ,int) ;
 int dev_warn (int *,char*) ;
 int s3c24xx_dma_phy_valid (struct s3c24xx_dma_chan*,struct s3c24xx_dma_phy*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static
struct s3c24xx_dma_phy *s3c24xx_dma_get_phy(struct s3c24xx_dma_chan *s3cchan)
{
 struct s3c24xx_dma_engine *s3cdma = s3cchan->host;
 struct s3c24xx_dma_phy *phy = ((void*)0);
 unsigned long flags;
 int i;
 int ret;

 for (i = 0; i < s3cdma->pdata->num_phy_channels; i++) {
  phy = &s3cdma->phy_chans[i];

  if (!phy->valid)
   continue;

  if (!s3c24xx_dma_phy_valid(s3cchan, phy))
   continue;

  spin_lock_irqsave(&phy->lock, flags);

  if (!phy->serving) {
   phy->serving = s3cchan;
   spin_unlock_irqrestore(&phy->lock, flags);
   break;
  }

  spin_unlock_irqrestore(&phy->lock, flags);
 }


 if (i == s3cdma->pdata->num_phy_channels) {
  dev_warn(&s3cdma->pdev->dev, "no phy channel available\n");
  return ((void*)0);
 }


 if (s3cdma->sdata->has_clocks) {
  ret = clk_enable(phy->clk);
  if (ret) {
   dev_err(&s3cdma->pdev->dev, "could not enable clock for channel %d, err %d\n",
    phy->id, ret);
   phy->serving = ((void*)0);
   return ((void*)0);
  }
 }

 return phy;
}
