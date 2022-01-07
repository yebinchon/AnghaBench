
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buf {int vmapping_counter; int vmap_ptr; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {void* (* vmap ) (struct dma_buf*) ;} ;


 int BUG_ON (int) ;
 int IS_ERR (void*) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* stub1 (struct dma_buf*) ;

void *dma_buf_vmap(struct dma_buf *dmabuf)
{
 void *ptr;

 if (WARN_ON(!dmabuf))
  return ((void*)0);

 if (!dmabuf->ops->vmap)
  return ((void*)0);

 mutex_lock(&dmabuf->lock);
 if (dmabuf->vmapping_counter) {
  dmabuf->vmapping_counter++;
  BUG_ON(!dmabuf->vmap_ptr);
  ptr = dmabuf->vmap_ptr;
  goto out_unlock;
 }

 BUG_ON(dmabuf->vmap_ptr);

 ptr = dmabuf->ops->vmap(dmabuf);
 if (WARN_ON_ONCE(IS_ERR(ptr)))
  ptr = ((void*)0);
 if (!ptr)
  goto out_unlock;

 dmabuf->vmap_ptr = ptr;
 dmabuf->vmapping_counter = 1;

out_unlock:
 mutex_unlock(&dmabuf->lock);
 return ptr;
}
