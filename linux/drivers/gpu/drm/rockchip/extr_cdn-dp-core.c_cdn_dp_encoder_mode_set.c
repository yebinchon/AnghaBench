
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_info {int color_depth; int v_sync_polarity; int h_sync_polarity; int color_fmt; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int flags; } ;
struct drm_display_info {int bpc; } ;
struct TYPE_2__ {struct drm_display_info display_info; } ;
struct cdn_dp_device {int mode; struct video_info video_info; TYPE_1__ connector; } ;


 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int PXL_RGB ;
 struct cdn_dp_device* encoder_to_dp (struct drm_encoder*) ;
 int memcpy (int *,struct drm_display_mode*,int) ;

__attribute__((used)) static void cdn_dp_encoder_mode_set(struct drm_encoder *encoder,
        struct drm_display_mode *mode,
        struct drm_display_mode *adjusted)
{
 struct cdn_dp_device *dp = encoder_to_dp(encoder);
 struct drm_display_info *display_info = &dp->connector.display_info;
 struct video_info *video = &dp->video_info;

 switch (display_info->bpc) {
 case 10:
  video->color_depth = 10;
  break;
 case 6:
  video->color_depth = 6;
  break;
 default:
  video->color_depth = 8;
  break;
 }

 video->color_fmt = PXL_RGB;
 video->v_sync_polarity = !!(mode->flags & DRM_MODE_FLAG_NVSYNC);
 video->h_sync_polarity = !!(mode->flags & DRM_MODE_FLAG_NHSYNC);

 memcpy(&dp->mode, adjusted, sizeof(*mode));
}
