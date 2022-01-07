
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int flags; } ;


 int CACHE_SET_UNREGISTERING ;
 int bch_cache_set_stop (struct cache_set*) ;
 int set_bit (int ,int *) ;

void bch_cache_set_unregister(struct cache_set *c)
{
 set_bit(CACHE_SET_UNREGISTERING, &c->flags);
 bch_cache_set_stop(c);
}
