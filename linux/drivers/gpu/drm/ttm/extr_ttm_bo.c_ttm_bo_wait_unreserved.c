
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resv; } ;
struct ttm_buffer_object {int wu_mutex; TYPE_1__ base; } ;


 int EINTR ;
 int ERESTARTSYS ;
 int dma_resv_is_locked (int ) ;
 int dma_resv_lock_interruptible (int ,int *) ;
 int dma_resv_unlock (int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int ttm_bo_wait_unreserved(struct ttm_buffer_object *bo)
{
 int ret;
 ret = mutex_lock_interruptible(&bo->wu_mutex);
 if (unlikely(ret != 0))
  return -ERESTARTSYS;
 if (!dma_resv_is_locked(bo->base.resv))
  goto out_unlock;
 ret = dma_resv_lock_interruptible(bo->base.resv, ((void*)0));
 if (ret == -EINTR)
  ret = -ERESTARTSYS;
 if (unlikely(ret != 0))
  goto out_unlock;
 dma_resv_unlock(bo->base.resv);

out_unlock:
 mutex_unlock(&bo->wu_mutex);
 return ret;
}
