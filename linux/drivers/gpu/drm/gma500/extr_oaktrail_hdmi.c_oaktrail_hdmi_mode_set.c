
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {struct drm_device* dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;


 int oaktrail_hdmi_audio_enable (struct drm_device*) ;

__attribute__((used)) static void oaktrail_hdmi_mode_set(struct drm_encoder *encoder,
          struct drm_display_mode *mode,
          struct drm_display_mode *adjusted_mode)
{
 struct drm_device *dev = encoder->dev;

 oaktrail_hdmi_audio_enable(dev);
 return;
}
