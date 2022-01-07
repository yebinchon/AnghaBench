
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_dma_platdata {struct s3c24xx_dma_channel* channels; } ;
struct s3c24xx_dma_phy {int id; } ;
struct s3c24xx_dma_engine {TYPE_1__* sdata; struct s3c24xx_dma_platdata* pdata; } ;
struct s3c24xx_dma_channel {int chansel; } ;
struct s3c24xx_dma_chan {size_t id; int slave; struct s3c24xx_dma_engine* host; } ;
struct TYPE_2__ {scalar_t__ has_reqsel; } ;


 int S3C24XX_CHANSEL_VALID ;
 int S3C24XX_CHANSEL_WIDTH ;

__attribute__((used)) static bool s3c24xx_dma_phy_valid(struct s3c24xx_dma_chan *s3cchan,
      struct s3c24xx_dma_phy *phy)
{
 struct s3c24xx_dma_engine *s3cdma = s3cchan->host;
 const struct s3c24xx_dma_platdata *pdata = s3cdma->pdata;
 struct s3c24xx_dma_channel *cdata = &pdata->channels[s3cchan->id];
 int phyvalid;


 if (!s3cchan->slave)
  return 1;


 if (s3cdma->sdata->has_reqsel)
  return 1;

 phyvalid = (cdata->chansel >> (phy->id * S3C24XX_CHANSEL_WIDTH));
 return (phyvalid & S3C24XX_CHANSEL_VALID) ? 1 : 0;
}
