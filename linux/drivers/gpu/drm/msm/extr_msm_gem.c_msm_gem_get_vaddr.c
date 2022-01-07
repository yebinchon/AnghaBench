
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;


 int MSM_MADV_WILLNEED ;
 void* get_vaddr (struct drm_gem_object*,int ) ;

void *msm_gem_get_vaddr(struct drm_gem_object *obj)
{
 return get_vaddr(obj, MSM_MADV_WILLNEED);
}
