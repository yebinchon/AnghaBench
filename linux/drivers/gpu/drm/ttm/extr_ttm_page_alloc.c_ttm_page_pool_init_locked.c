
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_page_pool {int fill_lock; char* name; unsigned int order; int gfp_flags; scalar_t__ nfrees; scalar_t__ npages; int list; int lock; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ttm_page_pool_init_locked(struct ttm_page_pool *pool, gfp_t flags,
  char *name, unsigned int order)
{
 spin_lock_init(&pool->lock);
 pool->fill_lock = 0;
 INIT_LIST_HEAD(&pool->list);
 pool->npages = pool->nfrees = 0;
 pool->gfp_flags = flags;
 pool->name = name;
 pool->order = order;
}
