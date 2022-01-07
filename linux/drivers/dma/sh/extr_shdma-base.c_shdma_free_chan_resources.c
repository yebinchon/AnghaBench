
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shdma_ops {int (* halt_channel ) (struct shdma_chan*) ;} ;
struct shdma_dev {struct shdma_ops* ops; } ;
struct shdma_chan {scalar_t__ slave_id; int desc; int chan_lock; scalar_t__ desc_num; int ld_free; scalar_t__ real_slave_id; int ld_queue; } ;
struct dma_chan {int * private; int device; } ;


 int LIST_HEAD (int ) ;
 int clear_bit (scalar_t__,int ) ;
 int kfree (int ) ;
 int list ;
 int list_empty (int *) ;
 int list_splice_init (int *,int *) ;
 int shdma_chan_ld_cleanup (struct shdma_chan*,int) ;
 int shdma_slave_used ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct shdma_chan*) ;
 struct shdma_chan* to_shdma_chan (struct dma_chan*) ;
 struct shdma_dev* to_shdma_dev (int ) ;

__attribute__((used)) static void shdma_free_chan_resources(struct dma_chan *chan)
{
 struct shdma_chan *schan = to_shdma_chan(chan);
 struct shdma_dev *sdev = to_shdma_dev(chan->device);
 const struct shdma_ops *ops = sdev->ops;
 LIST_HEAD(list);


 spin_lock_irq(&schan->chan_lock);
 ops->halt_channel(schan);
 spin_unlock_irq(&schan->chan_lock);




 if (!list_empty(&schan->ld_queue))
  shdma_chan_ld_cleanup(schan, 1);

 if (schan->slave_id >= 0) {

  clear_bit(schan->slave_id, shdma_slave_used);
  chan->private = ((void*)0);
 }

 schan->real_slave_id = 0;

 spin_lock_irq(&schan->chan_lock);

 list_splice_init(&schan->ld_free, &list);
 schan->desc_num = 0;

 spin_unlock_irq(&schan->chan_lock);

 kfree(schan->desc);
}
