
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_dma_phy {struct s3c24xx_dma_chan* serving; int id; } ;
struct s3c24xx_dma_engine {TYPE_1__* pdev; } ;
struct s3c24xx_dma_chan {int state; struct s3c24xx_dma_phy* phy; int name; struct s3c24xx_dma_engine* host; } ;
struct TYPE_2__ {int dev; } ;


 int S3C24XX_DMA_CHAN_RUNNING ;
 int dev_dbg (int *,char*,int ,int ) ;
 int s3c24xx_dma_start_next_txd (struct s3c24xx_dma_chan*) ;

__attribute__((used)) static void s3c24xx_dma_phy_reassign_start(struct s3c24xx_dma_phy *phy,
 struct s3c24xx_dma_chan *s3cchan)
{
 struct s3c24xx_dma_engine *s3cdma = s3cchan->host;

 dev_dbg(&s3cdma->pdev->dev, "reassigned physical channel %d for xfer on %s\n",
  phy->id, s3cchan->name);






 phy->serving = s3cchan;
 s3cchan->phy = phy;
 s3cchan->state = S3C24XX_DMA_CHAN_RUNNING;
 s3c24xx_dma_start_next_txd(s3cchan);
}
