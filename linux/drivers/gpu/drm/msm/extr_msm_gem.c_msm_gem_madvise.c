
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gem_object {scalar_t__ madv; int lock; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_2__ {int struct_mutex; } ;


 int WARN_ON (int) ;
 scalar_t__ __MSM_MADV_PURGED ;
 int mutex_is_locked (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

int msm_gem_madvise(struct drm_gem_object *obj, unsigned madv)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);

 mutex_lock(&msm_obj->lock);

 WARN_ON(!mutex_is_locked(&obj->dev->struct_mutex));

 if (msm_obj->madv != __MSM_MADV_PURGED)
  msm_obj->madv = madv;

 madv = msm_obj->madv;

 mutex_unlock(&msm_obj->lock);

 return (madv != __MSM_MADV_PURGED);
}
