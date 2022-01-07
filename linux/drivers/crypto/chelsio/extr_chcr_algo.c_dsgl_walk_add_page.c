
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsgl_walk {int nents; TYPE_1__* to; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int * addr; int * len; } ;


 int cpu_to_be64 (int ) ;
 int htons (size_t) ;

__attribute__((used)) static inline void dsgl_walk_add_page(struct dsgl_walk *walk,
     size_t size,
     dma_addr_t addr)
{
 int j;

 if (!size)
  return;
 j = walk->nents;
 walk->to->len[j % 8] = htons(size);
 walk->to->addr[j % 8] = cpu_to_be64(addr);
 j++;
 if ((j % 8) == 0)
  walk->to++;
 walk->nents = j;
}
