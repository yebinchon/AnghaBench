
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union iop3xx_desc {TYPE_3__* aau; TYPE_2__* dma; int ptr; } ;
struct iop_adma_desc_slot {int hw_desc; } ;
struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_6__ {int * src; int dest_addr; int byte_count; } ;
struct TYPE_5__ {int src_addr; int dest_addr; int byte_count; } ;
struct TYPE_4__ {int id; } ;



 int BUG () ;


 int iop_desc_init_memcpy (struct iop_adma_desc_slot*,int) ;
 int iop_desc_init_null_xor (struct iop_adma_desc_slot*,int,int) ;

__attribute__((used)) static inline void
iop_desc_init_interrupt(struct iop_adma_desc_slot *desc,
   struct iop_adma_chan *chan)
{
 union iop3xx_desc hw_desc = { .ptr = desc->hw_desc, };

 switch (chan->device->id) {
 case 129:
 case 128:
  iop_desc_init_memcpy(desc, 1);
  hw_desc.dma->byte_count = 0;
  hw_desc.dma->dest_addr = 0;
  hw_desc.dma->src_addr = 0;
  break;
 case 130:
  iop_desc_init_null_xor(desc, 2, 1);
  hw_desc.aau->byte_count = 0;
  hw_desc.aau->dest_addr = 0;
  hw_desc.aau->src[0] = 0;
  hw_desc.aau->src[1] = 0;
  break;
 default:
  BUG();
 }
}
