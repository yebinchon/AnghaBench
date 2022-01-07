
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union iop3xx_desc {TYPE_4__* aau; TYPE_2__* dma; int ptr; } ;
typedef int u32 ;
struct iop_adma_desc_slot {int hw_desc; } ;
struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_8__ {TYPE_3__* src_edc; int * src; } ;
struct TYPE_7__ {int src_addr; } ;
struct TYPE_6__ {int src_addr; } ;
struct TYPE_5__ {int id; } ;



 int BUG () ;


 size_t __desc_idx (int) ;

__attribute__((used)) static inline u32 iop_desc_get_src_addr(struct iop_adma_desc_slot *desc,
     struct iop_adma_chan *chan,
     int src_idx)
{
 union iop3xx_desc hw_desc = { .ptr = desc->hw_desc, };

 switch (chan->device->id) {
 case 129:
 case 128:
  return hw_desc.dma->src_addr;
 case 130:
  break;
 default:
  BUG();
 }

 if (src_idx < 4)
  return hw_desc.aau->src[src_idx];
 else
  return hw_desc.aau->src_edc[__desc_idx(src_idx)].src_addr;
}
