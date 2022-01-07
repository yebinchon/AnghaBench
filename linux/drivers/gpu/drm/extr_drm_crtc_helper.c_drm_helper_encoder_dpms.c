
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder_helper_funcs {int (* dpms ) (struct drm_encoder*,int) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;


 int stub1 (struct drm_encoder*,int) ;

__attribute__((used)) static void drm_helper_encoder_dpms(struct drm_encoder *encoder, int mode)
{
 const struct drm_encoder_helper_funcs *encoder_funcs;

 encoder_funcs = encoder->helper_private;
 if (!encoder_funcs)
  return;

 if (encoder_funcs->dpms)
  encoder_funcs->dpms(encoder, mode);
}
