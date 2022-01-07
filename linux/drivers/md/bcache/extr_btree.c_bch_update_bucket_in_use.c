
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_stat {int in_use; } ;
struct cache_set {int nbuckets; int avail_nbuckets; } ;



void bch_update_bucket_in_use(struct cache_set *c, struct gc_stat *stats)
{
 stats->in_use = (c->nbuckets - c->avail_nbuckets) * 100 / c->nbuckets;
}
