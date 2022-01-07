
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {TYPE_1__* set; } ;
struct bucket {int dummy; } ;
struct TYPE_2__ {scalar_t__ avail_nbuckets; scalar_t__ nbuckets; int gc_stats; } ;


 int SET_GC_MARK (struct bucket*,int ) ;
 int SET_GC_SECTORS_USED (struct bucket*,int ) ;
 int bch_update_bucket_in_use (TYPE_1__*,int *) ;

void __bch_bucket_free(struct cache *ca, struct bucket *b)
{
 SET_GC_MARK(b, 0);
 SET_GC_SECTORS_USED(b, 0);

 if (ca->set->avail_nbuckets < ca->set->nbuckets) {
  ca->set->avail_nbuckets++;
  bch_update_bucket_in_use(ca->set, &ca->set->gc_stats);
 }
}
