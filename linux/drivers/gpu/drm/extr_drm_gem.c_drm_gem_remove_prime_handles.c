
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {scalar_t__ dma_buf; } ;
struct TYPE_2__ {int lock; } ;
struct drm_file {TYPE_1__ prime; } ;


 int drm_prime_remove_buf_handle_locked (TYPE_1__*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
drm_gem_remove_prime_handles(struct drm_gem_object *obj, struct drm_file *filp)
{




 mutex_lock(&filp->prime.lock);
 if (obj->dma_buf) {
  drm_prime_remove_buf_handle_locked(&filp->prime,
         obj->dma_buf);
 }
 mutex_unlock(&filp->prime.lock);
}
