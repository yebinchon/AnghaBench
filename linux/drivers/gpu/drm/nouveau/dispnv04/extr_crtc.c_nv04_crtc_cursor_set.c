
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int chipset; } ;
struct TYPE_9__ {TYPE_1__ info; } ;
struct TYPE_10__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; struct drm_device* dev; } ;
struct TYPE_12__ {int (* show ) (struct nouveau_crtc*,int) ;int offset; int (* set_offset ) (struct nouveau_crtc*,int ) ;TYPE_6__* nvbo; int (* hide ) (struct nouveau_crtc*,int) ;} ;
struct nouveau_crtc {TYPE_5__ cursor; } ;
struct nouveau_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dev; } ;
struct TYPE_11__ {int offset; } ;
struct TYPE_13__ {TYPE_4__ bo; } ;


 int EINVAL ;
 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int nouveau_bo_map (struct nouveau_bo*) ;
 int nouveau_bo_unmap (struct nouveau_bo*) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;
 int nv04_cursor_upload (struct drm_device*,struct nouveau_bo*,TYPE_6__*) ;
 int nv11_cursor_upload (struct drm_device*,struct nouveau_bo*,TYPE_6__*) ;
 int stub1 (struct nouveau_crtc*,int) ;
 int stub2 (struct nouveau_crtc*,int ) ;
 int stub3 (struct nouveau_crtc*,int) ;

__attribute__((used)) static int
nv04_crtc_cursor_set(struct drm_crtc *crtc, struct drm_file *file_priv,
       uint32_t buffer_handle, uint32_t width, uint32_t height)
{
 struct nouveau_drm *drm = nouveau_drm(crtc->dev);
 struct drm_device *dev = drm->dev;
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 struct nouveau_bo *cursor = ((void*)0);
 struct drm_gem_object *gem;
 int ret = 0;

 if (!buffer_handle) {
  nv_crtc->cursor.hide(nv_crtc, 1);
  return 0;
 }

 if (width != 64 || height != 64)
  return -EINVAL;

 gem = drm_gem_object_lookup(file_priv, buffer_handle);
 if (!gem)
  return -ENOENT;
 cursor = nouveau_gem_object(gem);

 ret = nouveau_bo_map(cursor);
 if (ret)
  goto out;

 if (drm->client.device.info.chipset >= 0x11)
  nv11_cursor_upload(dev, cursor, nv_crtc->cursor.nvbo);
 else
  nv04_cursor_upload(dev, cursor, nv_crtc->cursor.nvbo);

 nouveau_bo_unmap(cursor);
 nv_crtc->cursor.offset = nv_crtc->cursor.nvbo->bo.offset;
 nv_crtc->cursor.set_offset(nv_crtc, nv_crtc->cursor.offset);
 nv_crtc->cursor.show(nv_crtc, 1);
out:
 drm_gem_object_put_unlocked(gem);
 return ret;
}
