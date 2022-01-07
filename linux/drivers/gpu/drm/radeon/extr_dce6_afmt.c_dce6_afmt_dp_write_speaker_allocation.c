
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct radeon_encoder_atom_dig {TYPE_1__* pin; int afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {TYPE_2__* dev; } ;
struct TYPE_4__ {struct radeon_device* dev_private; } ;
struct TYPE_3__ {int offset; } ;


 int AZ_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER ;
 int DP_CONNECTION ;
 int HDMI_CONNECTION ;
 int RREG32_ENDPOINT (int ,int ) ;
 int SPEAKER_ALLOCATION (int) ;
 int SPEAKER_ALLOCATION_MASK ;
 int WREG32_ENDPOINT (int ,int ,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void dce6_afmt_dp_write_speaker_allocation(struct drm_encoder *encoder,
        u8 *sadb, int sad_count)
{
 struct radeon_device *rdev = encoder->dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
 u32 tmp;

 if (!dig || !dig->afmt || !dig->pin)
  return;


 tmp = RREG32_ENDPOINT(dig->pin->offset,
         AZ_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER);
 tmp &= ~(HDMI_CONNECTION | SPEAKER_ALLOCATION_MASK);

 tmp |= DP_CONNECTION;
 if (sad_count)
  tmp |= SPEAKER_ALLOCATION(sadb[0]);
 else
  tmp |= SPEAKER_ALLOCATION(5);
 WREG32_ENDPOINT(dig->pin->offset,
   AZ_F0_CODEC_PIN_CONTROL_CHANNEL_SPEAKER, tmp);
}
