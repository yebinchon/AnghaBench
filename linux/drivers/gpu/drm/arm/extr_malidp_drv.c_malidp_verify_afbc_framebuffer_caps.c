
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int* modifier; scalar_t__* offsets; int width; int height; int pixel_format; } ;
struct drm_device {int dummy; } ;



 int AFBC_SIZE_MASK ;
 int DRM_DEBUG_KMS (char*) ;
 int malidp_format_mod_supported (struct drm_device*,int ,int) ;

__attribute__((used)) static bool
malidp_verify_afbc_framebuffer_caps(struct drm_device *dev,
        const struct drm_mode_fb_cmd2 *mode_cmd)
{
 if (malidp_format_mod_supported(dev, mode_cmd->pixel_format,
     mode_cmd->modifier[0]) == 0)
  return 0;

 if (mode_cmd->offsets[0] != 0) {
  DRM_DEBUG_KMS("AFBC buffers' plane offset should be 0\n");
  return 0;
 }

 switch (mode_cmd->modifier[0] & AFBC_SIZE_MASK) {
 case 128:
  if ((mode_cmd->width % 16) || (mode_cmd->height % 16)) {
   DRM_DEBUG_KMS("AFBC buffers must be aligned to 16 pixels\n");
   return 0;
  }
  break;
 default:
  DRM_DEBUG_KMS("Unsupported AFBC block size\n");
  return 0;
 }

 return 1;
}
