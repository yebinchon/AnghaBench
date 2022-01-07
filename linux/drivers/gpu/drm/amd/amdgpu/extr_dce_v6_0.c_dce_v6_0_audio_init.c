
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enabled; int num_pins; TYPE_3__* pin; } ;
struct TYPE_5__ {TYPE_1__ audio; } ;
struct amdgpu_device {int asic_type; TYPE_2__ mode_info; } ;
struct TYPE_6__ {int channels; int rate; int bits_per_sample; int connected; int id; int offset; scalar_t__ category_code; scalar_t__ status_bits; } ;






 int amdgpu_audio ;
 int dce_v6_0_audio_enable (struct amdgpu_device*,TYPE_3__*,int) ;
 int * pin_offsets ;

__attribute__((used)) static int dce_v6_0_audio_init(struct amdgpu_device *adev)
{
 int i;

 if (!amdgpu_audio)
  return 0;

 adev->mode_info.audio.enabled = 1;

 switch (adev->asic_type) {
 case 129:
 case 130:
 case 128:
 default:
  adev->mode_info.audio.num_pins = 6;
  break;
 case 131:
  adev->mode_info.audio.num_pins = 2;
  break;
 }

 for (i = 0; i < adev->mode_info.audio.num_pins; i++) {
  adev->mode_info.audio.pin[i].channels = -1;
  adev->mode_info.audio.pin[i].rate = -1;
  adev->mode_info.audio.pin[i].bits_per_sample = -1;
  adev->mode_info.audio.pin[i].status_bits = 0;
  adev->mode_info.audio.pin[i].category_code = 0;
  adev->mode_info.audio.pin[i].connected = 0;
  adev->mode_info.audio.pin[i].offset = pin_offsets[i];
  adev->mode_info.audio.pin[i].id = i;
  dce_v6_0_audio_enable(adev, &adev->mode_info.audio.pin[i], 0);
 }

 return 0;
}
