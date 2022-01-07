
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phys; int tx_submit; } ;
struct mv_xor_desc_slot {int node; int idx; TYPE_1__ async_tx; int sg_tx_list; void* hw_desc; } ;
struct mv_xor_chan {int slots_allocated; int lock; int free_slots; scalar_t__ dma_desc_pool; void* dma_desc_pool_virt; } ;
struct dma_chan {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MV_XOR_POOL_SIZE ;
 int MV_XOR_SLOT_SIZE ;
 int dev_dbg (int ,char*,int) ;
 int dev_info (int ,char*,int) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,struct dma_chan*) ;
 struct mv_xor_desc_slot* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mv_chan_to_devp (struct mv_xor_chan*) ;
 int mv_xor_tx_submit ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct mv_xor_chan* to_mv_xor_chan (struct dma_chan*) ;

__attribute__((used)) static int mv_xor_alloc_chan_resources(struct dma_chan *chan)
{
 void *virt_desc;
 dma_addr_t dma_desc;
 int idx;
 struct mv_xor_chan *mv_chan = to_mv_xor_chan(chan);
 struct mv_xor_desc_slot *slot = ((void*)0);
 int num_descs_in_pool = MV_XOR_POOL_SIZE/MV_XOR_SLOT_SIZE;


 idx = mv_chan->slots_allocated;
 while (idx < num_descs_in_pool) {
  slot = kzalloc(sizeof(*slot), GFP_KERNEL);
  if (!slot) {
   dev_info(mv_chan_to_devp(mv_chan),
     "channel only initialized %d descriptor slots",
     idx);
   break;
  }
  virt_desc = mv_chan->dma_desc_pool_virt;
  slot->hw_desc = virt_desc + idx * MV_XOR_SLOT_SIZE;

  dma_async_tx_descriptor_init(&slot->async_tx, chan);
  slot->async_tx.tx_submit = mv_xor_tx_submit;
  INIT_LIST_HEAD(&slot->node);
  INIT_LIST_HEAD(&slot->sg_tx_list);
  dma_desc = mv_chan->dma_desc_pool;
  slot->async_tx.phys = dma_desc + idx * MV_XOR_SLOT_SIZE;
  slot->idx = idx++;

  spin_lock_bh(&mv_chan->lock);
  mv_chan->slots_allocated = idx;
  list_add_tail(&slot->node, &mv_chan->free_slots);
  spin_unlock_bh(&mv_chan->lock);
 }

 dev_dbg(mv_chan_to_devp(mv_chan),
  "allocated %d descriptor slots\n",
  mv_chan->slots_allocated);

 return mv_chan->slots_allocated ? : -ENOMEM;
}
