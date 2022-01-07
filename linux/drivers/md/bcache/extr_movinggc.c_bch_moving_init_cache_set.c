
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int moving_in_flight; int moving_gc_keys; } ;


 int bch_keybuf_init (int *) ;
 int sema_init (int *,int) ;

void bch_moving_init_cache_set(struct cache_set *c)
{
 bch_keybuf_init(&c->moving_gc_keys);
 sema_init(&c->moving_in_flight, 64);
}
