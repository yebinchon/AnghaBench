
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_dma_phy {int irq; } ;
struct s3c24xx_dma_engine {struct s3c24xx_dma_phy* phy_chans; TYPE_1__* pdata; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int num_phy_channels; } ;


 int devm_free_irq (int *,int ,struct s3c24xx_dma_phy*) ;

__attribute__((used)) static void s3c24xx_dma_free_irq(struct platform_device *pdev,
    struct s3c24xx_dma_engine *s3cdma)
{
 int i;

 for (i = 0; i < s3cdma->pdata->num_phy_channels; i++) {
  struct s3c24xx_dma_phy *phy = &s3cdma->phy_chans[i];

  devm_free_irq(&pdev->dev, phy->irq, phy);
 }
}
