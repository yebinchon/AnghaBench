
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_object {int tbo; } ;


 int ttm_bo_reserve (int *,int,int,int *) ;
 int ttm_bo_unreserve (int *) ;
 int ttm_bo_wait (int *,int,int) ;
 scalar_t__ unlikely (int) ;

int virtio_gpu_object_wait(struct virtio_gpu_object *bo, bool no_wait)
{
 int r;

 r = ttm_bo_reserve(&bo->tbo, 1, no_wait, ((void*)0));
 if (unlikely(r != 0))
  return r;
 r = ttm_bo_wait(&bo->tbo, 1, no_wait);
 ttm_bo_unreserve(&bo->tbo);
 return r;
}
