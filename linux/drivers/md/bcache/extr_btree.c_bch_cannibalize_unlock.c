
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int btree_cache_wait; int * btree_cache_alloc_lock; } ;


 int * current ;
 int wake_up (int *) ;

__attribute__((used)) static void bch_cannibalize_unlock(struct cache_set *c)
{
 if (c->btree_cache_alloc_lock == current) {
  c->btree_cache_alloc_lock = ((void*)0);
  wake_up(&c->btree_cache_wait);
 }
}
