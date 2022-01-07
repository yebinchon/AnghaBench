
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_object {int vram_node; } ;
struct drm_gem_object {int dummy; } ;


 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

__attribute__((used)) static bool use_pages(struct drm_gem_object *obj)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 return !msm_obj->vram_node;
}
