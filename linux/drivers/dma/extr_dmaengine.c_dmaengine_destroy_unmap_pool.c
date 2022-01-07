
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmaengine_unmap_pool {int * cache; int * pool; } ;


 int ARRAY_SIZE (struct dmaengine_unmap_pool*) ;
 int kmem_cache_destroy (int *) ;
 int mempool_destroy (int *) ;
 struct dmaengine_unmap_pool* unmap_pool ;

__attribute__((used)) static void dmaengine_destroy_unmap_pool(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(unmap_pool); i++) {
  struct dmaengine_unmap_pool *p = &unmap_pool[i];

  mempool_destroy(p->pool);
  p->pool = ((void*)0);
  kmem_cache_destroy(p->cache);
  p->cache = ((void*)0);
 }
}
