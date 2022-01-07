
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct coh901318_pool {int dmapool; struct device* dev; int lock; } ;


 int DEBUGFS_POOL_COUNTER_RESET (struct coh901318_pool*) ;
 int dma_pool_create (char*,struct device*,size_t,size_t,int ) ;
 int spin_lock_init (int *) ;

int coh901318_pool_create(struct coh901318_pool *pool,
     struct device *dev,
     size_t size, size_t align)
{
 spin_lock_init(&pool->lock);
 pool->dev = dev;
 pool->dmapool = dma_pool_create("lli_pool", dev, size, align, 0);

 DEBUGFS_POOL_COUNTER_RESET(pool);
 return 0;
}
