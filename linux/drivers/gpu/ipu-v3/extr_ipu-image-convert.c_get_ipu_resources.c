
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ipu_image_convert_priv {TYPE_1__* ipu; } ;
struct ipu_image_convert_dma_chan {int rot_out; int rot_in; int out; int in; } ;
struct ipu_image_convert_chan {int out_eof_irq; int rot_out_eof_irq; void* rotation_out_chan; void* out_chan; void* rotation_in_chan; void* in_chan; void* ic; int ic_task; struct ipu_image_convert_priv* priv; struct ipu_image_convert_dma_chan* dma_ch; } ;
struct TYPE_4__ {int dev; } ;


 int EBUSY ;
 int IPU_IRQ_EOF ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*,...) ;
 int do_bh ;
 void* ipu_ic_get (TYPE_1__*,int ) ;
 void* ipu_idmac_channel_irq (TYPE_1__*,void*,int ) ;
 void* ipu_idmac_get (TYPE_1__*,int ) ;
 int norotate_irq ;
 int release_ipu_resources (struct ipu_image_convert_chan*) ;
 int request_threaded_irq (int,int ,int ,int ,char*,struct ipu_image_convert_chan*) ;
 int rotate_irq ;

__attribute__((used)) static int get_ipu_resources(struct ipu_image_convert_chan *chan)
{
 const struct ipu_image_convert_dma_chan *dma = chan->dma_ch;
 struct ipu_image_convert_priv *priv = chan->priv;
 int ret;


 chan->ic = ipu_ic_get(priv->ipu, chan->ic_task);
 if (IS_ERR(chan->ic)) {
  dev_err(priv->ipu->dev, "could not acquire IC\n");
  ret = PTR_ERR(chan->ic);
  goto err;
 }


 chan->in_chan = ipu_idmac_get(priv->ipu, dma->in);
 chan->out_chan = ipu_idmac_get(priv->ipu, dma->out);
 if (IS_ERR(chan->in_chan) || IS_ERR(chan->out_chan)) {
  dev_err(priv->ipu->dev, "could not acquire idmac channels\n");
  ret = -EBUSY;
  goto err;
 }

 chan->rotation_in_chan = ipu_idmac_get(priv->ipu, dma->rot_in);
 chan->rotation_out_chan = ipu_idmac_get(priv->ipu, dma->rot_out);
 if (IS_ERR(chan->rotation_in_chan) || IS_ERR(chan->rotation_out_chan)) {
  dev_err(priv->ipu->dev,
   "could not acquire idmac rotation channels\n");
  ret = -EBUSY;
  goto err;
 }


 chan->out_eof_irq = ipu_idmac_channel_irq(priv->ipu,
        chan->out_chan,
        IPU_IRQ_EOF);

 ret = request_threaded_irq(chan->out_eof_irq, norotate_irq, do_bh,
       0, "ipu-ic", chan);
 if (ret < 0) {
  dev_err(priv->ipu->dev, "could not acquire irq %d\n",
    chan->out_eof_irq);
  chan->out_eof_irq = -1;
  goto err;
 }

 chan->rot_out_eof_irq = ipu_idmac_channel_irq(priv->ipu,
           chan->rotation_out_chan,
           IPU_IRQ_EOF);

 ret = request_threaded_irq(chan->rot_out_eof_irq, rotate_irq, do_bh,
       0, "ipu-ic", chan);
 if (ret < 0) {
  dev_err(priv->ipu->dev, "could not acquire irq %d\n",
   chan->rot_out_eof_irq);
  chan->rot_out_eof_irq = -1;
  goto err;
 }

 return 0;
err:
 release_ipu_resources(chan);
 return ret;
}
