
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nbuckets; int first_bucket; } ;
struct cache {int invalidate_needs_gc; int set; TYPE_1__ sb; struct bucket* buckets; int free_inc; } ;
struct bucket {int dummy; } ;
typedef int n ;


 scalar_t__ bch_can_invalidate_bucket (struct cache*,struct bucket*) ;
 int bch_invalidate_one_bucket (struct cache*,struct bucket*) ;
 int fifo_full (int *) ;
 int get_random_bytes (size_t*,int) ;
 int wake_up_gc (int ) ;

__attribute__((used)) static void invalidate_buckets_random(struct cache *ca)
{
 struct bucket *b;
 size_t checked = 0;

 while (!fifo_full(&ca->free_inc)) {
  size_t n;

  get_random_bytes(&n, sizeof(n));

  n %= (size_t) (ca->sb.nbuckets - ca->sb.first_bucket);
  n += ca->sb.first_bucket;

  b = ca->buckets + n;

  if (bch_can_invalidate_bucket(ca, b))
   bch_invalidate_one_bucket(ca, b);

  if (++checked >= ca->sb.nbuckets / 2) {
   ca->invalidate_needs_gc = 1;
   wake_up_gc(ca->set);
   return;
  }
 }
}
