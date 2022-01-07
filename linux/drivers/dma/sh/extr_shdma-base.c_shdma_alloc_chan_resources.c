
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shdma_slave {int slave_id; } ;
struct shdma_ops {struct shdma_desc* (* embedded_desc ) (int ,int) ;} ;
struct shdma_dev {int desc_size; struct shdma_ops* ops; } ;
struct TYPE_3__ {int tx_submit; } ;
struct shdma_desc {int node; int mark; TYPE_1__ async_tx; } ;
struct TYPE_4__ {int device; } ;
struct shdma_chan {int desc_num; int ld_free; TYPE_2__ dma_chan; int desc; int slave_id; int real_slave_id; } ;
struct dma_chan {struct shdma_slave* private; } ;


 int DESC_IDLE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NR_DESCS_PER_CHANNEL ;
 int clear_bit (int ,int ) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,TYPE_2__*) ;
 int kcalloc (int,int ,int ) ;
 int list_add (int *,int *) ;
 int shdma_setup_slave (struct shdma_chan*,int ) ;
 int shdma_slave_used ;
 int shdma_tx_submit ;
 struct shdma_desc* stub1 (int ,int) ;
 struct shdma_chan* to_shdma_chan (struct dma_chan*) ;
 struct shdma_dev* to_shdma_dev (int ) ;

__attribute__((used)) static int shdma_alloc_chan_resources(struct dma_chan *chan)
{
 struct shdma_chan *schan = to_shdma_chan(chan);
 struct shdma_dev *sdev = to_shdma_dev(schan->dma_chan.device);
 const struct shdma_ops *ops = sdev->ops;
 struct shdma_desc *desc;
 struct shdma_slave *slave = chan->private;
 int ret, i;





 if (slave) {

  schan->real_slave_id = slave->slave_id;
  ret = shdma_setup_slave(schan, 0);
  if (ret < 0)
   goto esetslave;
 } else {

  schan->slave_id = -EINVAL;
 }

 schan->desc = kcalloc(NR_DESCS_PER_CHANNEL,
         sdev->desc_size, GFP_KERNEL);
 if (!schan->desc) {
  ret = -ENOMEM;
  goto edescalloc;
 }
 schan->desc_num = NR_DESCS_PER_CHANNEL;

 for (i = 0; i < NR_DESCS_PER_CHANNEL; i++) {
  desc = ops->embedded_desc(schan->desc, i);
  dma_async_tx_descriptor_init(&desc->async_tx,
          &schan->dma_chan);
  desc->async_tx.tx_submit = shdma_tx_submit;
  desc->mark = DESC_IDLE;

  list_add(&desc->node, &schan->ld_free);
 }

 return NR_DESCS_PER_CHANNEL;

edescalloc:
 if (slave)
esetslave:
  clear_bit(slave->slave_id, shdma_slave_used);
 chan->private = ((void*)0);
 return ret;
}
