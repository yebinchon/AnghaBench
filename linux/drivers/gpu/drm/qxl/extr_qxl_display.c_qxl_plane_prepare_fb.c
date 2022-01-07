
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct qxl_surface {scalar_t__ width; int height; int stride; } ;
struct qxl_device {TYPE_6__* dumb_shadow_bo; } ;
struct qxl_bo {TYPE_6__* shadow; scalar_t__ is_dumb; } ;
struct drm_plane_state {TYPE_3__* crtc; TYPE_2__* fb; } ;
struct drm_plane {scalar_t__ type; TYPE_1__* dev; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_11__ {int base; } ;
struct TYPE_10__ {scalar_t__ width; int height; } ;
struct TYPE_12__ {TYPE_5__ tbo; TYPE_4__ surf; } ;
struct TYPE_9__ {int index; } ;
struct TYPE_8__ {struct drm_gem_object** obj; } ;
struct TYPE_7__ {struct qxl_device* dev_private; } ;


 scalar_t__ DRM_PLANE_TYPE_PRIMARY ;
 int QXL_GEM_DOMAIN_SURFACE ;
 int drm_gem_object_get (int *) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct qxl_bo* gem_to_qxl_bo (struct drm_gem_object*) ;
 int qxl_bo_create (struct qxl_device*,int,int,int,int ,struct qxl_surface*,TYPE_6__**) ;
 int qxl_bo_pin (struct qxl_bo*) ;
 int qxl_calc_dumb_shadow (struct qxl_device*,struct qxl_surface*) ;
 int qxl_update_dumb_head (struct qxl_device*,int ,struct qxl_bo*) ;

__attribute__((used)) static int qxl_plane_prepare_fb(struct drm_plane *plane,
    struct drm_plane_state *new_state)
{
 struct qxl_device *qdev = plane->dev->dev_private;
 struct drm_gem_object *obj;
 struct qxl_bo *user_bo;
 struct qxl_surface surf;
 int ret;

 if (!new_state->fb)
  return 0;

 obj = new_state->fb->obj[0];
 user_bo = gem_to_qxl_bo(obj);

 if (plane->type == DRM_PLANE_TYPE_PRIMARY &&
     user_bo->is_dumb) {
  qxl_update_dumb_head(qdev, new_state->crtc->index,
         user_bo);
  qxl_calc_dumb_shadow(qdev, &surf);
  if (!qdev->dumb_shadow_bo ||
      qdev->dumb_shadow_bo->surf.width != surf.width ||
      qdev->dumb_shadow_bo->surf.height != surf.height) {
   if (qdev->dumb_shadow_bo) {
    drm_gem_object_put_unlocked
     (&qdev->dumb_shadow_bo->tbo.base);
    qdev->dumb_shadow_bo = ((void*)0);
   }
   qxl_bo_create(qdev, surf.height * surf.stride,
          1, 1, QXL_GEM_DOMAIN_SURFACE, &surf,
          &qdev->dumb_shadow_bo);
  }
  if (user_bo->shadow != qdev->dumb_shadow_bo) {
   if (user_bo->shadow) {
    drm_gem_object_put_unlocked
     (&user_bo->shadow->tbo.base);
    user_bo->shadow = ((void*)0);
   }
   drm_gem_object_get(&qdev->dumb_shadow_bo->tbo.base);
   user_bo->shadow = qdev->dumb_shadow_bo;
  }
 }

 ret = qxl_bo_pin(user_bo);
 if (ret)
  return ret;

 return 0;
}
