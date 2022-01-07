
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_intel_mode_device {struct drm_display_mode* panel_fixed_mode; scalar_t__ vbt_mode; } ;
struct oaktrail_timing_info {int hactive_hi; int hactive_lo; int vactive_hi; int vactive_lo; int hsync_offset_hi; int hsync_offset_lo; int hsync_pulse_width_hi; int hsync_pulse_width_lo; int hblank_hi; int hblank_lo; int vsync_offset_hi; int vsync_offset_lo; int vsync_pulse_width_hi; int vsync_pulse_width_lo; int vblank_hi; int vblank_lo; int pixel_clock; } ;
struct TYPE_2__ {struct oaktrail_timing_info DTD; } ;
struct drm_psb_private {scalar_t__ lfp_lvds_vbt_mode; scalar_t__ has_gct; TYPE_1__ gct_data; } ;
struct drm_display_mode {int hdisplay; int vdisplay; int hsync_start; int hsync_end; int htotal; int vsync_start; int vsync_end; int vtotal; int clock; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int GFP_KERNEL ;
 void* drm_mode_duplicate (struct drm_device*,scalar_t__) ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct drm_display_mode* kzalloc (int,int ) ;
 int pr_info (char*,int) ;

__attribute__((used)) static void oaktrail_lvds_get_configuration_mode(struct drm_device *dev,
     struct psb_intel_mode_device *mode_dev)
{
 struct drm_display_mode *mode = ((void*)0);
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct oaktrail_timing_info *ti = &dev_priv->gct_data.DTD;

 mode_dev->panel_fixed_mode = ((void*)0);


 if (dev_priv->has_gct) {
  mode = kzalloc(sizeof(*mode), GFP_KERNEL);
  if (!mode)
   return;

  mode->hdisplay = (ti->hactive_hi << 8) | ti->hactive_lo;
  mode->vdisplay = (ti->vactive_hi << 8) | ti->vactive_lo;
  mode->hsync_start = mode->hdisplay + ((ti->hsync_offset_hi << 8) | ti->hsync_offset_lo);


  mode->hsync_end = mode->hsync_start + ((ti->hsync_pulse_width_hi << 8) | ti->hsync_pulse_width_lo);


  mode->htotal = mode->hdisplay + ((ti->hblank_hi << 8) | ti->hblank_lo);

  mode->vsync_start = mode->vdisplay + ((ti->vsync_offset_hi << 4) | ti->vsync_offset_lo);


  mode->vsync_end = mode->vsync_start + ((ti->vsync_pulse_width_hi << 4) | ti->vsync_pulse_width_lo);


  mode->vtotal = mode->vdisplay + ((ti->vblank_hi << 8) | ti->vblank_lo);

  mode->clock = ti->pixel_clock * 10;
  mode_dev->panel_fixed_mode = mode;
 }


 if (mode_dev->panel_fixed_mode == ((void*)0) && mode_dev->vbt_mode)
  mode_dev->panel_fixed_mode = drm_mode_duplicate(dev,
      mode_dev->vbt_mode);


 if (mode_dev->panel_fixed_mode == ((void*)0))
  if (dev_priv->lfp_lvds_vbt_mode)
   mode_dev->panel_fixed_mode =
    drm_mode_duplicate(dev,
     dev_priv->lfp_lvds_vbt_mode);


 if (mode_dev->panel_fixed_mode == ((void*)0))
  return;

 drm_mode_set_name(mode_dev->panel_fixed_mode);
 drm_mode_set_crtcinfo(mode_dev->panel_fixed_mode, 0);
}
