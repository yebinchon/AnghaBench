
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_encoder_atom_dig {TYPE_2__* afmt; } ;
struct radeon_encoder {TYPE_1__* audio; struct radeon_encoder_atom_dig* enc_priv; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {int (* set_mute ) (struct drm_encoder*,int ,int) ;} ;


 int stub1 (struct drm_encoder*,int ,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_audio_set_mute(struct drm_encoder *encoder, bool mute)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;

 if (!dig || !dig->afmt)
  return;

 if (radeon_encoder->audio && radeon_encoder->audio->set_mute)
  radeon_encoder->audio->set_mute(encoder, dig->afmt->offset, mute);
}
