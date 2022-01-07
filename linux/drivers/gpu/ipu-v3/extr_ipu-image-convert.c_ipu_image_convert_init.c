
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_image_convert_priv* image_convert_priv; } ;
struct ipu_image_convert_priv {struct ipu_image_convert_chan* chan; struct ipu_soc* ipu; } ;
struct ipu_image_convert_chan {int ic_task; int out_eof_irq; int rot_out_eof_irq; int done_q; int pending_q; int ctx_list; int irqlock; int * dma_ch; struct ipu_image_convert_priv* priv; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IC_NUM_TASKS ;
 int INIT_LIST_HEAD (int *) ;
 struct ipu_image_convert_priv* devm_kzalloc (struct device*,int,int ) ;
 int * image_convert_dma_chan ;
 int spin_lock_init (int *) ;

int ipu_image_convert_init(struct ipu_soc *ipu, struct device *dev)
{
 struct ipu_image_convert_priv *priv;
 int i;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 ipu->image_convert_priv = priv;
 priv->ipu = ipu;

 for (i = 0; i < IC_NUM_TASKS; i++) {
  struct ipu_image_convert_chan *chan = &priv->chan[i];

  chan->ic_task = i;
  chan->priv = priv;
  chan->dma_ch = &image_convert_dma_chan[i];
  chan->out_eof_irq = -1;
  chan->rot_out_eof_irq = -1;

  spin_lock_init(&chan->irqlock);
  INIT_LIST_HEAD(&chan->ctx_list);
  INIT_LIST_HEAD(&chan->pending_q);
  INIT_LIST_HEAD(&chan->done_q);
 }

 return 0;
}
