
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buf {void* vmap_ptr; scalar_t__ vmapping_counter; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* vunmap ) (struct dma_buf*,void*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dma_buf*,void*) ;

void dma_buf_vunmap(struct dma_buf *dmabuf, void *vaddr)
{
 if (WARN_ON(!dmabuf))
  return;

 BUG_ON(!dmabuf->vmap_ptr);
 BUG_ON(dmabuf->vmapping_counter == 0);
 BUG_ON(dmabuf->vmap_ptr != vaddr);

 mutex_lock(&dmabuf->lock);
 if (--dmabuf->vmapping_counter == 0) {
  if (dmabuf->ops->vunmap)
   dmabuf->ops->vunmap(dmabuf, vaddr);
  dmabuf->vmap_ptr = ((void*)0);
 }
 mutex_unlock(&dmabuf->lock);
}
