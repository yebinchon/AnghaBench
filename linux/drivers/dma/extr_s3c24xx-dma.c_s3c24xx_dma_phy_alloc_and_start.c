
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_dma_phy {int id; } ;
struct s3c24xx_dma_engine {TYPE_1__* pdev; } ;
struct s3c24xx_dma_chan {int state; struct s3c24xx_dma_phy* phy; int name; struct s3c24xx_dma_engine* host; } ;
struct TYPE_2__ {int dev; } ;


 int S3C24XX_DMA_CHAN_RUNNING ;
 int S3C24XX_DMA_CHAN_WAITING ;
 int dev_dbg (int *,char*,int ,...) ;
 struct s3c24xx_dma_phy* s3c24xx_dma_get_phy (struct s3c24xx_dma_chan*) ;
 int s3c24xx_dma_start_next_txd (struct s3c24xx_dma_chan*) ;

__attribute__((used)) static void s3c24xx_dma_phy_alloc_and_start(struct s3c24xx_dma_chan *s3cchan)
{
 struct s3c24xx_dma_engine *s3cdma = s3cchan->host;
 struct s3c24xx_dma_phy *phy;

 phy = s3c24xx_dma_get_phy(s3cchan);
 if (!phy) {
  dev_dbg(&s3cdma->pdev->dev, "no physical channel available for xfer on %s\n",
   s3cchan->name);
  s3cchan->state = S3C24XX_DMA_CHAN_WAITING;
  return;
 }

 dev_dbg(&s3cdma->pdev->dev, "allocated physical channel %d for xfer on %s\n",
  phy->id, s3cchan->name);

 s3cchan->phy = phy;
 s3cchan->state = S3C24XX_DMA_CHAN_RUNNING;

 s3c24xx_dma_start_next_txd(s3cchan);
}
