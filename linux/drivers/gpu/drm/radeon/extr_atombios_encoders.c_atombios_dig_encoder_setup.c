
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int atombios_dig_encoder_setup2 (struct drm_encoder*,int,int,int) ;

void
atombios_dig_encoder_setup(struct drm_encoder *encoder, int action, int panel_mode)
{
 atombios_dig_encoder_setup2(encoder, action, panel_mode, -1);
}
