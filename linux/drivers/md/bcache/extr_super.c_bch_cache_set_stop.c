
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int caching; int flags; } ;


 int CACHE_SET_STOPPING ;
 int closure_queue (int *) ;
 int test_and_set_bit (int ,int *) ;

void bch_cache_set_stop(struct cache_set *c)
{
 if (!test_and_set_bit(CACHE_SET_STOPPING, &c->flags))

  closure_queue(&c->caching);
}
