
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_gem_object {TYPE_3__* dev; TYPE_1__* funcs; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {int (* gem_prime_unpin ) (struct drm_gem_object*) ;} ;
struct TYPE_4__ {int (* unpin ) (struct drm_gem_object*) ;} ;


 int stub1 (struct drm_gem_object*) ;
 int stub2 (struct drm_gem_object*) ;

void drm_gem_unpin(struct drm_gem_object *obj)
{
 if (obj->funcs && obj->funcs->unpin)
  obj->funcs->unpin(obj);
 else if (obj->dev->driver->gem_prime_unpin)
  obj->dev->driver->gem_prime_unpin(obj);
}
