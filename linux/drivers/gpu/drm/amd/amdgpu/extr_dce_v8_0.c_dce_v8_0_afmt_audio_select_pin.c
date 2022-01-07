
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_encoder {TYPE_1__* dev; } ;
struct amdgpu_encoder_atom_dig {TYPE_2__* afmt; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {TYPE_3__* pin; scalar_t__ offset; } ;
struct TYPE_4__ {struct amdgpu_device* dev_private; } ;


 int AFMT_AUDIO_SRC_CONTROL__AFMT_AUDIO_SRC_SELECT__SHIFT ;
 int WREG32 (scalar_t__,int) ;
 scalar_t__ mmAFMT_AUDIO_SRC_CONTROL ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void dce_v8_0_afmt_audio_select_pin(struct drm_encoder *encoder)
{
 struct amdgpu_device *adev = encoder->dev->dev_private;
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
 u32 offset;

 if (!dig || !dig->afmt || !dig->afmt->pin)
  return;

 offset = dig->afmt->offset;

 WREG32(mmAFMT_AUDIO_SRC_CONTROL + offset,
        (dig->afmt->pin->id << AFMT_AUDIO_SRC_CONTROL__AFMT_AUDIO_SRC_SELECT__SHIFT));
}
