
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_config {int bpp; int lane_count; int video_mode; scalar_t__ channel_num; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int MDFLD_DSI_VIDEO_BURST_MODE ;
 int MDFLD_DSI_VIDEO_NON_BURST_MODE_SYNC_EVENTS ;
 int MDFLD_DSI_VIDEO_NON_BURST_MODE_SYNC_PULSE ;
 scalar_t__ TC35876X ;
 scalar_t__ TMD_VID ;
 scalar_t__ mdfld_get_panel_type (struct drm_device*,int) ;

__attribute__((used)) static int mdfld_dsi_get_default_config(struct drm_device *dev,
    struct mdfld_dsi_config *config, int pipe)
{
 if (!dev || !config) {
  DRM_ERROR("Invalid parameters");
  return -EINVAL;
 }

 config->bpp = 24;
 if (mdfld_get_panel_type(dev, pipe) == TC35876X)
  config->lane_count = 4;
 else
  config->lane_count = 2;
 config->channel_num = 0;

 if (mdfld_get_panel_type(dev, pipe) == TMD_VID)
  config->video_mode = MDFLD_DSI_VIDEO_NON_BURST_MODE_SYNC_PULSE;
 else if (mdfld_get_panel_type(dev, pipe) == TC35876X)
  config->video_mode =
    MDFLD_DSI_VIDEO_NON_BURST_MODE_SYNC_EVENTS;
 else
  config->video_mode = MDFLD_DSI_VIDEO_BURST_MODE;

 return 0;
}
