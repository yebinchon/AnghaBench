
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu {int tasklet; } ;
struct idmac_tx_desc {int txd; int list; } ;
struct idmac_channel {scalar_t__ status; int n_tx_desc; int lock; int ** sg; int free_list; struct idmac_tx_desc* desc; int queue; } ;
struct idmac {int dummy; } ;
struct dma_chan {int device; } ;


 scalar_t__ IPU_CHANNEL_ENABLED ;
 scalar_t__ IPU_CHANNEL_INITIALIZED ;
 int async_tx_clear_ack (int *) ;
 int ipu_disable_channel (struct idmac*,struct idmac_channel*,int) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int list_splice_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 struct idmac* to_idmac (int ) ;
 struct idmac_channel* to_idmac_chan (struct dma_chan*) ;
 struct ipu* to_ipu (struct idmac*) ;

__attribute__((used)) static int __idmac_terminate_all(struct dma_chan *chan)
{
 struct idmac_channel *ichan = to_idmac_chan(chan);
 struct idmac *idmac = to_idmac(chan->device);
 struct ipu *ipu = to_ipu(idmac);
 unsigned long flags;
 int i;

 ipu_disable_channel(idmac, ichan,
       ichan->status >= IPU_CHANNEL_ENABLED);

 tasklet_disable(&ipu->tasklet);


 spin_lock_irqsave(&ichan->lock, flags);
 list_splice_init(&ichan->queue, &ichan->free_list);

 if (ichan->desc)
  for (i = 0; i < ichan->n_tx_desc; i++) {
   struct idmac_tx_desc *desc = ichan->desc + i;
   if (list_empty(&desc->list))

    list_add(&desc->list, &ichan->free_list);

   async_tx_clear_ack(&desc->txd);
  }

 ichan->sg[0] = ((void*)0);
 ichan->sg[1] = ((void*)0);
 spin_unlock_irqrestore(&ichan->lock, flags);

 tasklet_enable(&ipu->tasklet);

 ichan->status = IPU_CHANNEL_INITIALIZED;

 return 0;
}
