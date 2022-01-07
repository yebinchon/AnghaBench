
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_dma_engine {int dummy; } ;
struct TYPE_2__ {int desc_free; } ;
struct s3c24xx_dma_chan {int id; int slave; TYPE_1__ vc; void* name; int state; struct s3c24xx_dma_engine* host; } ;
struct dma_device {int dev; int channels; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int S3C24XX_DMA_CHAN_IDLE ;
 int dev_dbg (int ,char*,void*) ;
 int dev_info (int ,char*,int,char*) ;
 struct s3c24xx_dma_chan* devm_kzalloc (int ,int,int ) ;
 void* kasprintf (int ,char*,int) ;
 int s3c24xx_dma_desc_free ;
 int vchan_init (TYPE_1__*,struct dma_device*) ;

__attribute__((used)) static int s3c24xx_dma_init_virtual_channels(struct s3c24xx_dma_engine *s3cdma,
  struct dma_device *dmadev, unsigned int channels, bool slave)
{
 struct s3c24xx_dma_chan *chan;
 int i;

 INIT_LIST_HEAD(&dmadev->channels);






 for (i = 0; i < channels; i++) {
  chan = devm_kzalloc(dmadev->dev, sizeof(*chan), GFP_KERNEL);
  if (!chan)
   return -ENOMEM;

  chan->id = i;
  chan->host = s3cdma;
  chan->state = S3C24XX_DMA_CHAN_IDLE;

  if (slave) {
   chan->slave = 1;
   chan->name = kasprintf(GFP_KERNEL, "slave%d", i);
   if (!chan->name)
    return -ENOMEM;
  } else {
   chan->name = kasprintf(GFP_KERNEL, "memcpy%d", i);
   if (!chan->name)
    return -ENOMEM;
  }
  dev_dbg(dmadev->dev,
    "initialize virtual channel \"%s\"\n",
    chan->name);

  chan->vc.desc_free = s3c24xx_dma_desc_free;
  vchan_init(&chan->vc, dmadev);
 }
 dev_info(dmadev->dev, "initialized %d virtual %s channels\n",
   i, slave ? "slave" : "memcpy");
 return i;
}
