
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_hdmi_acr {int dummy; } ;
struct radeon_encoder_atom_dig {TYPE_1__* afmt; } ;
struct radeon_encoder {TYPE_2__* audio; struct radeon_encoder_atom_dig* enc_priv; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_4__ {int (* update_acr ) (struct drm_encoder*,int ,struct radeon_hdmi_acr const*) ;} ;
struct TYPE_3__ {int offset; } ;


 struct radeon_hdmi_acr* radeon_audio_acr (unsigned int) ;
 int stub1 (struct drm_encoder*,int ,struct radeon_hdmi_acr const*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_audio_update_acr(struct drm_encoder *encoder, unsigned int clock)
{
 const struct radeon_hdmi_acr *acr = radeon_audio_acr(clock);
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;

 if (!dig || !dig->afmt)
  return;

 if (radeon_encoder->audio && radeon_encoder->audio->update_acr)
  radeon_encoder->audio->update_acr(encoder, dig->afmt->offset, acr);
}
