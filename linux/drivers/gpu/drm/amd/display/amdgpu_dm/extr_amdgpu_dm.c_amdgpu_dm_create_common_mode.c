
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {struct drm_device* dev; } ;
struct drm_display_mode {int hdisplay; int vdisplay; int name; int type; } ;
struct drm_device {int dummy; } ;
struct amdgpu_encoder {struct drm_display_mode native_mode; } ;


 int DRM_DISPLAY_MODE_LEN ;
 int DRM_MODE_TYPE_PREFERRED ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,struct drm_display_mode*) ;
 int strscpy (int ,char*,int ) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static struct drm_display_mode *
amdgpu_dm_create_common_mode(struct drm_encoder *encoder,
        char *name,
        int hdisplay, int vdisplay)
{
 struct drm_device *dev = encoder->dev;
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct drm_display_mode *mode = ((void*)0);
 struct drm_display_mode *native_mode = &amdgpu_encoder->native_mode;

 mode = drm_mode_duplicate(dev, native_mode);

 if (mode == ((void*)0))
  return ((void*)0);

 mode->hdisplay = hdisplay;
 mode->vdisplay = vdisplay;
 mode->type &= ~DRM_MODE_TYPE_PREFERRED;
 strscpy(mode->name, name, DRM_DISPLAY_MODE_LEN);

 return mode;

}
