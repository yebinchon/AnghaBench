
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s3c24xx_dma_chan {uintptr_t id; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_6__ {int driver; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int * driver; } ;


 TYPE_3__ s3c24xx_dma_driver ;
 struct s3c24xx_dma_chan* to_s3c24xx_dma_chan (struct dma_chan*) ;

bool s3c24xx_dma_filter(struct dma_chan *chan, void *param)
{
 struct s3c24xx_dma_chan *s3cchan;

 if (chan->device->dev->driver != &s3c24xx_dma_driver.driver)
  return 0;

 s3cchan = to_s3c24xx_dma_chan(chan);

 return s3cchan->id == (uintptr_t)param;
}
