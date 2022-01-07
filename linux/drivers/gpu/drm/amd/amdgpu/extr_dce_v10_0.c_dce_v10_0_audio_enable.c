
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
struct amdgpu_audio_pin {int offset; } ;


 int AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL__AUDIO_ENABLED_MASK ;
 int WREG32_AUDIO_ENDPT (int ,int ,int ) ;
 int ixAZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL ;

__attribute__((used)) static void dce_v10_0_audio_enable(struct amdgpu_device *adev,
      struct amdgpu_audio_pin *pin,
      bool enable)
{
 if (!pin)
  return;

 WREG32_AUDIO_ENDPT(pin->offset, ixAZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
      enable ? AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL__AUDIO_ENABLED_MASK : 0);
}
