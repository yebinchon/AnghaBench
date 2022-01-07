
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int sb; int invalidate_needs_gc; } ;


 int BUG_ON (int ) ;
 int CACHE_REPLACEMENT (int *) ;



 int invalidate_buckets_fifo (struct cache*) ;
 int invalidate_buckets_lru (struct cache*) ;
 int invalidate_buckets_random (struct cache*) ;

__attribute__((used)) static void invalidate_buckets(struct cache *ca)
{
 BUG_ON(ca->invalidate_needs_gc);

 switch (CACHE_REPLACEMENT(&ca->sb)) {
 case 129:
  invalidate_buckets_lru(ca);
  break;
 case 130:
  invalidate_buckets_fifo(ca);
  break;
 case 128:
  invalidate_buckets_random(ca);
  break;
 }
}
