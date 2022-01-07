
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; } ;
struct cache_set {int gc_after_writeback; TYPE_1__ gc_stats; } ;


 scalar_t__ BCH_AUTO_GC_DIRTY_THRESHOLD ;
 int BCH_DO_AUTO_GC ;
 int BCH_ENABLE_AUTO_GC ;

__attribute__((used)) static void update_gc_after_writeback(struct cache_set *c)
{
 if (c->gc_after_writeback != (BCH_ENABLE_AUTO_GC) ||
     c->gc_stats.in_use < BCH_AUTO_GC_DIRTY_THRESHOLD)
  return;

 c->gc_after_writeback |= BCH_DO_AUTO_GC;
}
