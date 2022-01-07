
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcm_pt {int x; int y; } ;
struct TYPE_3__ {struct tcm_pt p0; } ;
struct tiler_block {size_t fmt; TYPE_1__ area; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int slot_w; int slot_h; } ;


 int BUG_ON (int) ;
 TYPE_2__* geom ;
 int tiler_get_address (size_t,scalar_t__,scalar_t__,scalar_t__) ;
 int validfmt (size_t) ;

dma_addr_t tiler_tsptr(struct tiler_block *block, u32 orient,
  u32 x, u32 y)
{
 struct tcm_pt *p = &block->area.p0;
 BUG_ON(!validfmt(block->fmt));

 return tiler_get_address(block->fmt, orient,
   (p->x * geom[block->fmt].slot_w) + x,
   (p->y * geom[block->fmt].slot_h) + y);
}
