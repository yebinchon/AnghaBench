
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
typedef void* dma_addr_t ;
struct TYPE_6__ {void* dest_addr; } ;
struct TYPE_5__ {void* dest_addr; } ;
struct TYPE_4__ {int id; } ;



 int BUG () ;



__attribute__((used)) static inline void iop_desc_set_dest_addr(struct iop_adma_desc_slot *desc,
     struct iop_adma_chan *chan,
     dma_addr_t addr)
{
 union iop3xx_desc hw_desc = { .ptr = desc->hw_desc, };

 switch (chan->device->id) {
 case 129:
 case 128:
  hw_desc.dma->dest_addr = addr;
  break;
 case 130:
  hw_desc.aau->dest_addr = addr;
  break;
 default:
  BUG();
 }
}
