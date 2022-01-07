
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t nodes; } ;
struct cache_set {TYPE_1__ gc_stats; } ;


 size_t MAX_GC_TIMES ;
 size_t MIN_GC_NODES ;

__attribute__((used)) static size_t btree_gc_min_nodes(struct cache_set *c)
{
 size_t min_nodes;
 min_nodes = c->gc_stats.nodes / MAX_GC_TIMES;
 if (min_nodes < MIN_GC_NODES)
  min_nodes = MIN_GC_NODES;

 return min_nodes;
}
