
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct shdma_dev {TYPE_2__ dma_dev; } ;
struct shdma_chan {scalar_t__ max_xfer_len; } ;
struct sh_dmae_device {struct sh_dmae_chan** chan; scalar_t__ chan_reg; struct shdma_dev shdma_dev; TYPE_1__* pdata; } ;
struct sh_dmae_channel {scalar_t__ offset; } ;
struct sh_dmae_chan {int dev_id; scalar_t__ base; struct shdma_chan shdma_chan; } ;
struct platform_device {scalar_t__ id; } ;
struct TYPE_3__ {struct sh_dmae_channel* channel; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SH_DMA_TCR_MAX ;
 int dev_err (int ,char*,int,int) ;
 struct sh_dmae_chan* devm_kzalloc (int ,int,int ) ;
 int shdma_chan_probe (struct shdma_dev*,struct shdma_chan*,int) ;
 int shdma_chan_remove (struct shdma_chan*) ;
 int shdma_request_irq (struct shdma_chan*,int,unsigned long,int ) ;
 int snprintf (int ,int,char*,int,...) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int sh_dmae_chan_probe(struct sh_dmae_device *shdev, int id,
     int irq, unsigned long flags)
{
 const struct sh_dmae_channel *chan_pdata = &shdev->pdata->channel[id];
 struct shdma_dev *sdev = &shdev->shdma_dev;
 struct platform_device *pdev = to_platform_device(sdev->dma_dev.dev);
 struct sh_dmae_chan *sh_chan;
 struct shdma_chan *schan;
 int err;

 sh_chan = devm_kzalloc(sdev->dma_dev.dev, sizeof(struct sh_dmae_chan),
          GFP_KERNEL);
 if (!sh_chan)
  return -ENOMEM;

 schan = &sh_chan->shdma_chan;
 schan->max_xfer_len = SH_DMA_TCR_MAX + 1;

 shdma_chan_probe(sdev, schan, id);

 sh_chan->base = shdev->chan_reg + chan_pdata->offset;


 if (pdev->id >= 0)
  snprintf(sh_chan->dev_id, sizeof(sh_chan->dev_id),
    "sh-dmae%d.%d", pdev->id, id);
 else
  snprintf(sh_chan->dev_id, sizeof(sh_chan->dev_id),
    "sh-dma%d", id);

 err = shdma_request_irq(schan, irq, flags, sh_chan->dev_id);
 if (err) {
  dev_err(sdev->dma_dev.dev,
   "DMA channel %d request_irq error %d\n",
   id, err);
  goto err_no_irq;
 }

 shdev->chan[id] = sh_chan;
 return 0;

err_no_irq:

 shdma_chan_remove(schan);
 return err;
}
