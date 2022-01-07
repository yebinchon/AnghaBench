
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ first_bucket; scalar_t__ nbuckets; } ;
struct cache {scalar_t__ fifo_last_bucket; int invalidate_needs_gc; int set; TYPE_1__ sb; struct bucket* buckets; int free_inc; } ;
struct bucket {int dummy; } ;


 scalar_t__ bch_can_invalidate_bucket (struct cache*,struct bucket*) ;
 int bch_invalidate_one_bucket (struct cache*,struct bucket*) ;
 int fifo_full (int *) ;
 int wake_up_gc (int ) ;

__attribute__((used)) static void invalidate_buckets_fifo(struct cache *ca)
{
 struct bucket *b;
 size_t checked = 0;

 while (!fifo_full(&ca->free_inc)) {
  if (ca->fifo_last_bucket < ca->sb.first_bucket ||
      ca->fifo_last_bucket >= ca->sb.nbuckets)
   ca->fifo_last_bucket = ca->sb.first_bucket;

  b = ca->buckets + ca->fifo_last_bucket++;

  if (bch_can_invalidate_bucket(ca, b))
   bch_invalidate_one_bucket(ca, b);

  if (++checked >= ca->sb.nbuckets) {
   ca->invalidate_needs_gc = 1;
   wake_up_gc(ca->set);
   return;
  }
 }
}
