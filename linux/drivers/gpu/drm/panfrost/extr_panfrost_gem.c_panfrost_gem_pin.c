
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_heap; } ;


 int EINVAL ;
 int drm_gem_shmem_pin (struct drm_gem_object*) ;
 TYPE_1__* to_panfrost_bo (struct drm_gem_object*) ;

__attribute__((used)) static int panfrost_gem_pin(struct drm_gem_object *obj)
{
 if (to_panfrost_bo(obj)->is_heap)
  return -EINVAL;

 return drm_gem_shmem_pin(obj);
}
