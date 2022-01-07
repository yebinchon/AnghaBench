
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct drm_encoder {int possible_clones; scalar_t__ possible_crtcs; } ;
struct drm_device {int dummy; } ;
struct device_node {int dummy; } ;


 int EPROBE_DEFER ;
 scalar_t__ drm_of_find_possible_crtcs (struct drm_device*,struct device_node*) ;

int imx_drm_encoder_parse_of(struct drm_device *drm,
 struct drm_encoder *encoder, struct device_node *np)
{
 uint32_t crtc_mask = drm_of_find_possible_crtcs(drm, np);







 if (crtc_mask == 0)
  return -EPROBE_DEFER;

 encoder->possible_crtcs = crtc_mask;


 encoder->possible_clones = ~0;

 return 0;
}
