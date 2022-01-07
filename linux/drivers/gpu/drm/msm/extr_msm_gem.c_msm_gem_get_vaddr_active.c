
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;


 int __MSM_MADV_PURGED ;
 void* get_vaddr (struct drm_gem_object*,int ) ;

void *msm_gem_get_vaddr_active(struct drm_gem_object *obj)
{
 return get_vaddr(obj, __MSM_MADV_PURGED);
}
