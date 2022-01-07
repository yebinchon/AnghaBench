
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;

void tegra_output_encoder_destroy(struct drm_encoder *encoder)
{
 drm_encoder_cleanup(encoder);
}
