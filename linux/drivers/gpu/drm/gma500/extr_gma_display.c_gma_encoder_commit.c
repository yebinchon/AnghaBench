
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder_helper_funcs {int (* dpms ) (struct drm_encoder*,int ) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;


 int DRM_MODE_DPMS_ON ;
 int stub1 (struct drm_encoder*,int ) ;

void gma_encoder_commit(struct drm_encoder *encoder)
{
 const struct drm_encoder_helper_funcs *encoder_funcs =
     encoder->helper_private;

 encoder_funcs->dpms(encoder, DRM_MODE_DPMS_ON);
}
