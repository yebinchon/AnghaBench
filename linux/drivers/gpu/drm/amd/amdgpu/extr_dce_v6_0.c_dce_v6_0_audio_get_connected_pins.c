
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int num_pins; TYPE_3__* pin; } ;
struct TYPE_5__ {TYPE_1__ audio; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_6__ {int connected; int offset; } ;


 int AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT ;
 int PORT_CONNECTIVITY ;
 scalar_t__ REG_GET_FIELD (int ,int ,int ) ;
 int RREG32_AUDIO_ENDPT (int ,int ) ;
 int ixAZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT ;

__attribute__((used)) static void dce_v6_0_audio_get_connected_pins(struct amdgpu_device *adev)
{
 int i;
 u32 tmp;

 for (i = 0; i < adev->mode_info.audio.num_pins; i++) {
  tmp = RREG32_AUDIO_ENDPT(adev->mode_info.audio.pin[i].offset,
    ixAZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT);
  if (REG_GET_FIELD(tmp, AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT,
     PORT_CONNECTIVITY))
   adev->mode_info.audio.pin[i].connected = 0;
  else
   adev->mode_info.audio.pin[i].connected = 1;
 }

}
