
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msm_gem_object {int lock; } ;
struct drm_gem_object {int dummy; } ;


 int mmap_offset (struct drm_gem_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

uint64_t msm_gem_mmap_offset(struct drm_gem_object *obj)
{
 uint64_t offset;
 struct msm_gem_object *msm_obj = to_msm_bo(obj);

 mutex_lock(&msm_obj->lock);
 offset = mmap_offset(obj);
 mutex_unlock(&msm_obj->lock);
 return offset;
}
