
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {int buckets; TYPE_1__* set; } ;
struct bucket {int pin; int prio; } ;
struct TYPE_2__ {int bucket_lock; } ;


 int BUG_ON (int) ;
 scalar_t__ GC_MARK (struct bucket*) ;
 scalar_t__ GC_MARK_RECLAIMABLE ;
 scalar_t__ GC_SECTORS_USED (struct bucket*) ;
 int INITIAL_PRIO ;
 int atomic_inc (int *) ;
 int bch_inc_gen (struct cache*,struct bucket*) ;
 int lockdep_assert_held (int *) ;
 int trace_bcache_invalidate (struct cache*,struct bucket*) ;

void __bch_invalidate_one_bucket(struct cache *ca, struct bucket *b)
{
 lockdep_assert_held(&ca->set->bucket_lock);
 BUG_ON(GC_MARK(b) && GC_MARK(b) != GC_MARK_RECLAIMABLE);

 if (GC_SECTORS_USED(b))
  trace_bcache_invalidate(ca, b - ca->buckets);

 bch_inc_gen(ca, b);
 b->prio = INITIAL_PRIO;
 atomic_inc(&b->pin);
}
