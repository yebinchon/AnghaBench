
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_4__ {int size; } ;
struct armada_gem_object {int * update; struct armada_crtc* update_data; TYPE_2__ obj; int addr; } ;
struct armada_crtc {int cursor_w; int cursor_h; struct armada_gem_object* cursor_obj; TYPE_1__* variant; } ;
struct TYPE_3__ {int has_spu_adv_reg; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int armada_drm_crtc_cursor_update (struct armada_crtc*,int) ;
 struct armada_gem_object* armada_gem_object_lookup (struct drm_file*,int) ;
 int * cursor_update ;
 int drm_gem_object_put_unlocked (TYPE_2__*) ;
 struct armada_crtc* drm_to_armada_crtc (struct drm_crtc*) ;

__attribute__((used)) static int armada_drm_crtc_cursor_set(struct drm_crtc *crtc,
 struct drm_file *file, uint32_t handle, uint32_t w, uint32_t h)
{
 struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);
 struct armada_gem_object *obj = ((void*)0);
 int ret;


 if (!dcrtc->variant->has_spu_adv_reg)
  return -ENXIO;

 if (handle && w > 0 && h > 0) {

  if (w > 64 || h > 64 || (w > 32 && h > 32))
   return -ENOMEM;

  obj = armada_gem_object_lookup(file, handle);
  if (!obj)
   return -ENOENT;


  if (!obj->addr) {
   drm_gem_object_put_unlocked(&obj->obj);
   return -EINVAL;
  }

  if (obj->obj.size < w * h * 4) {
   DRM_ERROR("buffer is too small\n");
   drm_gem_object_put_unlocked(&obj->obj);
   return -ENOMEM;
  }
 }

 if (dcrtc->cursor_obj) {
  dcrtc->cursor_obj->update = ((void*)0);
  dcrtc->cursor_obj->update_data = ((void*)0);
  drm_gem_object_put_unlocked(&dcrtc->cursor_obj->obj);
 }
 dcrtc->cursor_obj = obj;
 dcrtc->cursor_w = w;
 dcrtc->cursor_h = h;
 ret = armada_drm_crtc_cursor_update(dcrtc, 1);
 if (obj) {
  obj->update_data = dcrtc;
  obj->update = cursor_update;
 }

 return ret;
}
