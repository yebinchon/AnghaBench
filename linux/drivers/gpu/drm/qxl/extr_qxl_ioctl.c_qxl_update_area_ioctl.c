
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_operation_ctx {int member_0; int member_1; } ;
struct qxl_rect {scalar_t__ left; scalar_t__ top; scalar_t__ right; scalar_t__ bottom; } ;
struct qxl_device {int dummy; } ;
struct qxl_bo {int surface_id; int placement; int tbo; int type; int pin_count; } ;
struct drm_qxl_update_area {scalar_t__ left; scalar_t__ top; scalar_t__ right; scalar_t__ bottom; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct qxl_device* dev_private; } ;


 int DRM_ERROR (char*,int ) ;
 int EINVAL ;
 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct qxl_bo* gem_to_qxl_bo (struct drm_gem_object*) ;
 int qxl_bo_check_id (struct qxl_device*,struct qxl_bo*) ;
 int qxl_bo_reserve (struct qxl_bo*,int) ;
 int qxl_bo_unreserve (struct qxl_bo*) ;
 int qxl_io_update_area (struct qxl_device*,struct qxl_bo*,struct qxl_rect*) ;
 int qxl_ttm_placement_from_domain (struct qxl_bo*,int ,int) ;
 int ttm_bo_validate (int *,int *,struct ttm_operation_ctx*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int qxl_update_area_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file)
{
 struct qxl_device *qdev = dev->dev_private;
 struct drm_qxl_update_area *update_area = data;
 struct qxl_rect area = {.left = update_area->left,
    .top = update_area->top,
    .right = update_area->right,
    .bottom = update_area->bottom};
 int ret;
 struct drm_gem_object *gobj = ((void*)0);
 struct qxl_bo *qobj = ((void*)0);
 struct ttm_operation_ctx ctx = { 1, 0 };

 if (update_area->left >= update_area->right ||
     update_area->top >= update_area->bottom)
  return -EINVAL;

 gobj = drm_gem_object_lookup(file, update_area->handle);
 if (gobj == ((void*)0))
  return -ENOENT;

 qobj = gem_to_qxl_bo(gobj);

 ret = qxl_bo_reserve(qobj, 0);
 if (ret)
  goto out;

 if (!qobj->pin_count) {
  qxl_ttm_placement_from_domain(qobj, qobj->type, 0);
  ret = ttm_bo_validate(&qobj->tbo, &qobj->placement, &ctx);
  if (unlikely(ret))
   goto out;
 }

 ret = qxl_bo_check_id(qdev, qobj);
 if (ret)
  goto out2;
 if (!qobj->surface_id)
  DRM_ERROR("got update area for surface with no id %d\n", update_area->handle);
 ret = qxl_io_update_area(qdev, qobj, &area);

out2:
 qxl_bo_unreserve(qobj);

out:
 drm_gem_object_put_unlocked(gobj);
 return ret;
}
