
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_encoder {TYPE_1__* audio; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int (* select_pin ) (struct drm_encoder*) ;} ;


 int stub1 (struct drm_encoder*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_audio_select_pin(struct drm_encoder *encoder)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);

 if (radeon_encoder->audio && radeon_encoder->audio->select_pin)
  radeon_encoder->audio->select_pin(encoder);
}
