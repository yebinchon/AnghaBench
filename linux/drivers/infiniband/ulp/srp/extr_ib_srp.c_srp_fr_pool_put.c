
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_fr_pool {int lock; int free_list; } ;
struct srp_fr_desc {int entry; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void srp_fr_pool_put(struct srp_fr_pool *pool, struct srp_fr_desc **desc,
       int n)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&pool->lock, flags);
 for (i = 0; i < n; i++)
  list_add(&desc[i]->entry, &pool->free_list);
 spin_unlock_irqrestore(&pool->lock, flags);
}
