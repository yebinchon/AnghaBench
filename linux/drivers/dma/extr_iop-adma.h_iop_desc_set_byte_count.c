
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union iop3xx_desc {TYPE_3__* aau; TYPE_2__* dma; int ptr; } ;
typedef void* u32 ;
struct iop_adma_desc_slot {int hw_desc; } ;
struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_6__ {void* byte_count; } ;
struct TYPE_5__ {void* byte_count; } ;
struct TYPE_4__ {int id; } ;



 int BUG () ;



__attribute__((used)) static inline void iop_desc_set_byte_count(struct iop_adma_desc_slot *desc,
     struct iop_adma_chan *chan,
     u32 byte_count)
{
 union iop3xx_desc hw_desc = { .ptr = desc->hw_desc, };

 switch (chan->device->id) {
 case 129:
 case 128:
  hw_desc.dma->byte_count = byte_count;
  break;
 case 130:
  hw_desc.aau->byte_count = byte_count;
  break;
 default:
  BUG();
 }
}
