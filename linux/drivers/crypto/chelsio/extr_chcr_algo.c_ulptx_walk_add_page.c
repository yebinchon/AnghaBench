
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ulptx_walk {scalar_t__ nents; size_t pair_idx; TYPE_2__* pair; TYPE_1__* sgl; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {void** len; void** addr; } ;
struct TYPE_3__ {void* addr0; void* len0; } ;


 void* cpu_to_be32 (size_t) ;
 void* cpu_to_be64 (int ) ;

__attribute__((used)) static inline void ulptx_walk_add_page(struct ulptx_walk *walk,
     size_t size,
     dma_addr_t addr)
{
 if (!size)
  return;

 if (walk->nents == 0) {
  walk->sgl->len0 = cpu_to_be32(size);
  walk->sgl->addr0 = cpu_to_be64(addr);
 } else {
  walk->pair->addr[walk->pair_idx] = cpu_to_be64(addr);
  walk->pair->len[walk->pair_idx] = cpu_to_be32(size);
  walk->pair_idx = !walk->pair_idx;
  if (!walk->pair_idx)
   walk->pair++;
 }
 walk->nents++;
}
