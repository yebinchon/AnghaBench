
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xen_drm_front_drm_info {TYPE_1__* front_info; } ;
struct drm_gem_object {TYPE_2__* dev; } ;
struct TYPE_4__ {struct xen_drm_front_drm_info* dev_private; } ;
struct TYPE_3__ {int dbuf_list; } ;


 int dbuf_free (int *,int ) ;
 scalar_t__ drm_dev_enter (TYPE_2__*,int*) ;
 int drm_dev_exit (int) ;
 int xen_drm_front_dbuf_destroy (TYPE_1__*,int ) ;
 int xen_drm_front_dbuf_to_cookie (struct drm_gem_object*) ;
 int xen_drm_front_gem_free_object_unlocked (struct drm_gem_object*) ;

__attribute__((used)) static void xen_drm_drv_free_object_unlocked(struct drm_gem_object *obj)
{
 struct xen_drm_front_drm_info *drm_info = obj->dev->dev_private;
 int idx;

 if (drm_dev_enter(obj->dev, &idx)) {
  xen_drm_front_dbuf_destroy(drm_info->front_info,
        xen_drm_front_dbuf_to_cookie(obj));
  drm_dev_exit(idx);
 } else {
  dbuf_free(&drm_info->front_info->dbuf_list,
     xen_drm_front_dbuf_to_cookie(obj));
 }

 xen_drm_front_gem_free_object_unlocked(obj);
}
