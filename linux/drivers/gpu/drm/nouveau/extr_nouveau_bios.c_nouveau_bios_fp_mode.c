
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t mode_ptr; } ;
struct nvbios {int* data; TYPE_1__ fp; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct drm_display_mode {int clock; int hdisplay; int hsync_start; int hsync_end; int htotal; int vdisplay; int vsync_start; int vsync_end; int vtotal; int type; int status; int flags; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int MODE_OK ;
 int ROM16 (int) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 int memset (struct drm_display_mode*,int ,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

bool nouveau_bios_fp_mode(struct drm_device *dev, struct drm_display_mode *mode)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvbios *bios = &drm->vbios;
 uint8_t *mode_entry = &bios->data[bios->fp.mode_ptr];

 if (!mode)
  return bios->fp.mode_ptr;

 memset(mode, 0, sizeof(struct drm_display_mode));






 mode->clock = ROM16(mode_entry[7]) * 10;

 mode->hdisplay = ROM16(mode_entry[11]) + 1;




 mode->hsync_start = ROM16(mode_entry[17]) + 1;
 mode->hsync_end = ROM16(mode_entry[19]) + 1;
 mode->htotal = ROM16(mode_entry[21]) + 1;

 mode->vdisplay = ROM16(mode_entry[25]) + 1;
 mode->vsync_start = ROM16(mode_entry[31]) + 1;
 mode->vsync_end = ROM16(mode_entry[33]) + 1;
 mode->vtotal = ROM16(mode_entry[35]) + 1;
 mode->flags |= (mode_entry[37] & 0x10) ?
   DRM_MODE_FLAG_PHSYNC : DRM_MODE_FLAG_NHSYNC;
 mode->flags |= (mode_entry[37] & 0x1) ?
   DRM_MODE_FLAG_PVSYNC : DRM_MODE_FLAG_NVSYNC;





 mode->status = MODE_OK;
 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
 drm_mode_set_name(mode);
 return bios->fp.mode_ptr;
}
