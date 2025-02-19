
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_encoder {TYPE_1__* audio; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {int (* mode_set ) (struct drm_encoder*,struct drm_display_mode*) ;} ;


 int stub1 (struct drm_encoder*,struct drm_display_mode*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void radeon_audio_mode_set(struct drm_encoder *encoder,
      struct drm_display_mode *mode)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);

 if (radeon_encoder->audio && radeon_encoder->audio->mode_set)
  radeon_encoder->audio->mode_set(encoder, mode);
}
