
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_buffer_object {int dummy; } ;
struct qxl_device {int dummy; } ;
struct qxl_bo {struct ttm_buffer_object tbo; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ dev_private; } ;


 struct qxl_bo* gem_to_qxl_bo (struct drm_gem_object*) ;
 int qxl_surface_evict (struct qxl_device*,struct qxl_bo*,int) ;
 int ttm_bo_put (struct ttm_buffer_object*) ;

void qxl_gem_object_free(struct drm_gem_object *gobj)
{
 struct qxl_bo *qobj = gem_to_qxl_bo(gobj);
 struct qxl_device *qdev;
 struct ttm_buffer_object *tbo;

 qdev = (struct qxl_device *)gobj->dev->dev_private;

 qxl_surface_evict(qdev, qobj, 0);

 tbo = &qobj->tbo;
 ttm_bo_put(tbo);
}
