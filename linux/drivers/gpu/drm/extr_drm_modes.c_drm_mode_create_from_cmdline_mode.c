
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int type; } ;
struct drm_device {int dummy; } ;
struct drm_cmdline_mode {int xres; int refresh; int margins; int interlace; scalar_t__ refresh_specified; int yres; int rb; scalar_t__ cvt; } ;


 int CRTC_INTERLACE_HALVE_V ;
 int DRM_MODE_TYPE_USERDEF ;
 struct drm_display_mode* drm_cvt_mode (struct drm_device*,int,int ,int,int ,int ,int ) ;
 struct drm_display_mode* drm_gtf_mode (struct drm_device*,int,int ,int,int ,int ) ;
 int drm_mode_fixup_1366x768 (struct drm_display_mode*) ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;

struct drm_display_mode *
drm_mode_create_from_cmdline_mode(struct drm_device *dev,
      struct drm_cmdline_mode *cmd)
{
 struct drm_display_mode *mode;

 if (cmd->cvt)
  mode = drm_cvt_mode(dev,
        cmd->xres, cmd->yres,
        cmd->refresh_specified ? cmd->refresh : 60,
        cmd->rb, cmd->interlace,
        cmd->margins);
 else
  mode = drm_gtf_mode(dev,
        cmd->xres, cmd->yres,
        cmd->refresh_specified ? cmd->refresh : 60,
        cmd->interlace,
        cmd->margins);
 if (!mode)
  return ((void*)0);

 mode->type |= DRM_MODE_TYPE_USERDEF;

 if (cmd->xres == 1366)
  drm_mode_fixup_1366x768(mode);
 drm_mode_set_crtcinfo(mode, CRTC_INTERLACE_HALVE_V);
 return mode;
}
