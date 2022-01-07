
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {TYPE_1__* set; } ;
struct bucket {int pin; } ;
struct TYPE_2__ {int gc_mark_valid; } ;


 int BUG_ON (int) ;
 scalar_t__ GC_MARK (struct bucket*) ;
 scalar_t__ GC_MARK_RECLAIMABLE ;
 int atomic_read (int *) ;
 scalar_t__ can_inc_bucket_gen (struct bucket*) ;

bool bch_can_invalidate_bucket(struct cache *ca, struct bucket *b)
{
 BUG_ON(!ca->set->gc_mark_valid);

 return (!GC_MARK(b) ||
  GC_MARK(b) == GC_MARK_RECLAIMABLE) &&
  !atomic_read(&b->pin) &&
  can_inc_bucket_gen(b);
}
