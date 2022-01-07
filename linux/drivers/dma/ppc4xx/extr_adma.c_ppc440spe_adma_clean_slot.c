
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ppc440spe_adma_desc_slot {scalar_t__ phys; int chain_node; int slots_per_op; int idx; struct dma_cdb* hw_desc; int async_tx; } ;
struct ppc440spe_adma_chan {TYPE_2__* device; int chain; } ;
struct dma_cdb {scalar_t__ opc; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {scalar_t__ id; TYPE_1__ common; } ;


 scalar_t__ DMA_CDB_OPC_DCHECK128 ;
 scalar_t__ PPC440SPE_XOR_ID ;
 int async_tx_test_ack (int *) ;
 int dev_dbg (int ,char*,scalar_t__,int ,int ) ;
 int list_del (int *) ;
 scalar_t__ list_is_last (int *,int *) ;
 int ppc440spe_adma_free_slots (struct ppc440spe_adma_desc_slot*,struct ppc440spe_adma_chan*) ;
 scalar_t__ ppc440spe_chan_get_current_descriptor (struct ppc440spe_adma_chan*) ;

__attribute__((used)) static int ppc440spe_adma_clean_slot(struct ppc440spe_adma_desc_slot *desc,
  struct ppc440spe_adma_chan *chan)
{



 if (!async_tx_test_ack(&desc->async_tx))
  return 0;




 if (list_is_last(&desc->chain_node, &chan->chain) ||
     desc->phys == ppc440spe_chan_get_current_descriptor(chan))
  return 1;

 if (chan->device->id != PPC440SPE_XOR_ID) {
  struct dma_cdb *cdb = desc->hw_desc;
  if (cdb->opc == DMA_CDB_OPC_DCHECK128)
   return 1;
 }

 dev_dbg(chan->device->common.dev, "\tfree slot %llx: %d stride: %d\n",
  desc->phys, desc->idx, desc->slots_per_op);

 list_del(&desc->chain_node);
 ppc440spe_adma_free_slots(desc, chan);
 return 0;
}
