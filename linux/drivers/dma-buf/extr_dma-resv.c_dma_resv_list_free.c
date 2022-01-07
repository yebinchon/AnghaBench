
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_resv_list {unsigned int shared_count; int * shared; } ;


 int dma_fence_put (int ) ;
 int kfree_rcu (struct dma_resv_list*,int ) ;
 int rcu ;
 int rcu_dereference_protected (int ,int) ;

__attribute__((used)) static void dma_resv_list_free(struct dma_resv_list *list)
{
 unsigned int i;

 if (!list)
  return;

 for (i = 0; i < list->shared_count; ++i)
  dma_fence_put(rcu_dereference_protected(list->shared[i], 1));

 kfree_rcu(list, rcu);
}
