
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qxl_surface {int dummy; } ;
struct TYPE_4__ {int mutex; int objects; } ;
struct qxl_device {TYPE_2__ gem; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_3__ {struct drm_gem_object base; } ;
struct qxl_bo {int list; TYPE_1__ tbo; } ;


 int DRM_ERROR (char*,int,int,int,int) ;
 int ERESTARTSYS ;
 int PAGE_SIZE ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qxl_bo_create (struct qxl_device*,int,int,int,int,struct qxl_surface*,struct qxl_bo**) ;

int qxl_gem_object_create(struct qxl_device *qdev, int size,
     int alignment, int initial_domain,
     bool discardable, bool kernel,
     struct qxl_surface *surf,
     struct drm_gem_object **obj)
{
 struct qxl_bo *qbo;
 int r;

 *obj = ((void*)0);

 if (alignment < PAGE_SIZE)
  alignment = PAGE_SIZE;
 r = qxl_bo_create(qdev, size, kernel, 0, initial_domain, surf, &qbo);
 if (r) {
  if (r != -ERESTARTSYS)
   DRM_ERROR(
   "Failed to allocate GEM object (%d, %d, %u, %d)\n",
      size, initial_domain, alignment, r);
  return r;
 }
 *obj = &qbo->tbo.base;

 mutex_lock(&qdev->gem.mutex);
 list_add_tail(&qbo->list, &qdev->gem.objects);
 mutex_unlock(&qdev->gem.mutex);

 return 0;
}
