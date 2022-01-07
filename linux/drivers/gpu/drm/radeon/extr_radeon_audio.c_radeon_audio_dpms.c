
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_encoder {TYPE_1__* audio; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int (* dpms ) (struct drm_encoder*,int) ;} ;


 int DRM_MODE_DPMS_ON ;
 int stub1 (struct drm_encoder*,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void radeon_audio_dpms(struct drm_encoder *encoder, int mode)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);

 if (radeon_encoder->audio && radeon_encoder->audio->dpms)
  radeon_encoder->audio->dpms(encoder, mode == DRM_MODE_DPMS_ON);
}
