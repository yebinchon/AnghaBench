
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_resv_list {int dummy; } ;
struct dma_resv {int lock; int fence; int fence_excl; } ;
struct dma_fence {int dummy; } ;


 int dma_fence_put (struct dma_fence*) ;
 int dma_resv_list_free (struct dma_resv_list*) ;
 void* rcu_dereference_protected (int ,int) ;
 int ww_mutex_destroy (int *) ;

void dma_resv_fini(struct dma_resv *obj)
{
 struct dma_resv_list *fobj;
 struct dma_fence *excl;





 excl = rcu_dereference_protected(obj->fence_excl, 1);
 if (excl)
  dma_fence_put(excl);

 fobj = rcu_dereference_protected(obj->fence, 1);
 dma_resv_list_free(fobj);
 ww_mutex_destroy(&obj->lock);
}
