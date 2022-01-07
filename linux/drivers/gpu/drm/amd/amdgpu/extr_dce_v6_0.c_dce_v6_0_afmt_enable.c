
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder_atom_dig {TYPE_1__* afmt; } ;
struct amdgpu_encoder {int encoder_id; struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int enabled; int offset; int * pin; } ;


 int DRM_DEBUG (char*,char*,int ,int ) ;
 int dce_v6_0_audio_enable (struct amdgpu_device*,int *,int) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void dce_v6_0_afmt_enable(struct drm_encoder *encoder, bool enable)
{
 struct drm_device *dev = encoder->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;

 if (!dig || !dig->afmt)
  return;


 if (enable && dig->afmt->enabled)
  return;

 if (!enable && !dig->afmt->enabled)
  return;

 if (!enable && dig->afmt->pin) {
  dce_v6_0_audio_enable(adev, dig->afmt->pin, 0);
  dig->afmt->pin = ((void*)0);
 }

 dig->afmt->enabled = enable;

 DRM_DEBUG("%sabling AFMT interface @ 0x%04X for encoder 0x%x\n",
    enable ? "En" : "Dis", dig->afmt->offset, amdgpu_encoder->encoder_id);
}
