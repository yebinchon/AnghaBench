
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * next; } ;
struct iop_adma_desc_slot {TYPE_3__ chain_node; int slots_per_op; int idx; int async_tx; } ;
struct iop_adma_chan {TYPE_2__* device; int chain; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ common; } ;


 int async_tx_test_ack (int *) ;
 int dev_dbg (int ,char*,int ,int ) ;
 int iop_adma_free_slots (struct iop_adma_desc_slot*) ;
 int list_del (TYPE_3__*) ;

__attribute__((used)) static int
iop_adma_clean_slot(struct iop_adma_desc_slot *desc,
 struct iop_adma_chan *iop_chan)
{



 if (!async_tx_test_ack(&desc->async_tx))
  return 0;




 if (desc->chain_node.next == &iop_chan->chain)
  return 1;

 dev_dbg(iop_chan->device->common.dev,
  "\tfree slot: %d slots_per_op: %d\n",
  desc->idx, desc->slots_per_op);

 list_del(&desc->chain_node);
 iop_adma_free_slots(desc);

 return 0;
}
