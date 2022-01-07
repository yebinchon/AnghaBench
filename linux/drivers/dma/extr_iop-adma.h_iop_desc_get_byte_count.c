
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union iop3xx_desc {TYPE_3__* aau; TYPE_2__* dma; int ptr; } ;
typedef int u32 ;
struct iop_adma_desc_slot {int hw_desc; } ;
struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_6__ {int byte_count; } ;
struct TYPE_5__ {int byte_count; } ;
struct TYPE_4__ {int id; } ;



 int BUG () ;



__attribute__((used)) static inline u32 iop_desc_get_byte_count(struct iop_adma_desc_slot *desc,
     struct iop_adma_chan *chan)
{
 union iop3xx_desc hw_desc = { .ptr = desc->hw_desc, };

 switch (chan->device->id) {
 case 129:
 case 128:
  return hw_desc.dma->byte_count;
 case 130:
  return hw_desc.aau->byte_count;
 default:
  BUG();
 }
 return 0;
}
