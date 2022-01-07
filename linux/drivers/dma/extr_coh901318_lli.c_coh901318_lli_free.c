
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coh901318_pool {int lock; int dmapool; } ;
struct coh901318_lli {int phy_this; struct coh901318_lli* virt_link_addr; scalar_t__ link_addr; } ;


 int DEBUGFS_POOL_COUNTER_ADD (struct coh901318_pool*,int) ;
 int dma_pool_free (int ,struct coh901318_lli*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void coh901318_lli_free(struct coh901318_pool *pool,
   struct coh901318_lli **lli)
{
 struct coh901318_lli *l;
 struct coh901318_lli *next;

 if (lli == ((void*)0))
  return;

 l = *lli;

 if (l == ((void*)0))
  return;

 spin_lock(&pool->lock);

 while (l->link_addr) {
  next = l->virt_link_addr;
  dma_pool_free(pool->dmapool, l, l->phy_this);
  DEBUGFS_POOL_COUNTER_ADD(pool, -1);
  l = next;
 }
 dma_pool_free(pool->dmapool, l, l->phy_this);
 DEBUGFS_POOL_COUNTER_ADD(pool, -1);

 spin_unlock(&pool->lock);
 *lli = ((void*)0);
}
