
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_data {scalar_t__ has_clocks; } ;
struct s3c24xx_dma_platdata {int num_phy_channels; } ;
struct s3c24xx_dma_phy {int clk; scalar_t__ valid; } ;
struct s3c24xx_dma_engine {struct s3c24xx_dma_phy* phy_chans; int memcpy; int slave; } ;
struct platform_device {int dev; } ;


 int clk_unprepare (int ) ;
 struct s3c24xx_dma_platdata* dev_get_platdata (int *) ;
 int dma_async_device_unregister (int *) ;
 struct s3c24xx_dma_engine* platform_get_drvdata (struct platform_device*) ;
 int s3c24xx_dma_free_irq (struct platform_device*,struct s3c24xx_dma_engine*) ;
 int s3c24xx_dma_free_virtual_channels (int *) ;
 struct soc_data* s3c24xx_dma_get_soc_data (struct platform_device*) ;

__attribute__((used)) static int s3c24xx_dma_remove(struct platform_device *pdev)
{
 const struct s3c24xx_dma_platdata *pdata = dev_get_platdata(&pdev->dev);
 struct s3c24xx_dma_engine *s3cdma = platform_get_drvdata(pdev);
 struct soc_data *sdata = s3c24xx_dma_get_soc_data(pdev);
 int i;

 dma_async_device_unregister(&s3cdma->slave);
 dma_async_device_unregister(&s3cdma->memcpy);

 s3c24xx_dma_free_irq(pdev, s3cdma);

 s3c24xx_dma_free_virtual_channels(&s3cdma->slave);
 s3c24xx_dma_free_virtual_channels(&s3cdma->memcpy);

 if (sdata->has_clocks)
  for (i = 0; i < pdata->num_phy_channels; i++) {
   struct s3c24xx_dma_phy *phy = &s3cdma->phy_chans[i];
   if (phy->valid)
    clk_unprepare(phy->clk);
  }

 return 0;
}
