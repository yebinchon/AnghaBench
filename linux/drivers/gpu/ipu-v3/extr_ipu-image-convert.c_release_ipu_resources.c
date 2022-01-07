
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_image_convert_chan {int out_eof_irq; int rot_out_eof_irq; int * rotation_out_chan; int * rotation_in_chan; int * out_chan; int * in_chan; int * ic; } ;


 int IS_ERR_OR_NULL (int *) ;
 int free_irq (int,struct ipu_image_convert_chan*) ;
 int ipu_ic_put (int *) ;
 int ipu_idmac_put (int *) ;

__attribute__((used)) static void release_ipu_resources(struct ipu_image_convert_chan *chan)
{
 if (chan->out_eof_irq >= 0)
  free_irq(chan->out_eof_irq, chan);
 if (chan->rot_out_eof_irq >= 0)
  free_irq(chan->rot_out_eof_irq, chan);

 if (!IS_ERR_OR_NULL(chan->in_chan))
  ipu_idmac_put(chan->in_chan);
 if (!IS_ERR_OR_NULL(chan->out_chan))
  ipu_idmac_put(chan->out_chan);
 if (!IS_ERR_OR_NULL(chan->rotation_in_chan))
  ipu_idmac_put(chan->rotation_in_chan);
 if (!IS_ERR_OR_NULL(chan->rotation_out_chan))
  ipu_idmac_put(chan->rotation_out_chan);
 if (!IS_ERR_OR_NULL(chan->ic))
  ipu_ic_put(chan->ic);

 chan->in_chan = chan->out_chan = chan->rotation_in_chan =
  chan->rotation_out_chan = ((void*)0);
 chan->out_eof_irq = chan->rot_out_eof_irq = -1;
}
