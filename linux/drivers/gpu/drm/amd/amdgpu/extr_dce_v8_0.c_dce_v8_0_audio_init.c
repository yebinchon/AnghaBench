
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enabled; int num_pins; TYPE_3__* pin; } ;
struct TYPE_5__ {TYPE_1__ audio; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_2__ mode_info; } ;
struct TYPE_6__ {int channels; int rate; int bits_per_sample; int connected; int id; int offset; scalar_t__ category_code; scalar_t__ status_bits; } ;


 scalar_t__ CHIP_BONAIRE ;
 scalar_t__ CHIP_HAWAII ;
 scalar_t__ CHIP_KABINI ;
 scalar_t__ CHIP_KAVERI ;
 scalar_t__ CHIP_MULLINS ;
 int amdgpu_audio ;
 int dce_v8_0_audio_enable (struct amdgpu_device*,TYPE_3__*,int) ;
 int * pin_offsets ;

__attribute__((used)) static int dce_v8_0_audio_init(struct amdgpu_device *adev)
{
 int i;

 if (!amdgpu_audio)
  return 0;

 adev->mode_info.audio.enabled = 1;

 if (adev->asic_type == CHIP_KAVERI)
  adev->mode_info.audio.num_pins = 7;
 else if ((adev->asic_type == CHIP_KABINI) ||
   (adev->asic_type == CHIP_MULLINS))
  adev->mode_info.audio.num_pins = 3;
 else if ((adev->asic_type == CHIP_BONAIRE) ||
   (adev->asic_type == CHIP_HAWAII))
  adev->mode_info.audio.num_pins = 7;
 else
  adev->mode_info.audio.num_pins = 3;

 for (i = 0; i < adev->mode_info.audio.num_pins; i++) {
  adev->mode_info.audio.pin[i].channels = -1;
  adev->mode_info.audio.pin[i].rate = -1;
  adev->mode_info.audio.pin[i].bits_per_sample = -1;
  adev->mode_info.audio.pin[i].status_bits = 0;
  adev->mode_info.audio.pin[i].category_code = 0;
  adev->mode_info.audio.pin[i].connected = 0;
  adev->mode_info.audio.pin[i].offset = pin_offsets[i];
  adev->mode_info.audio.pin[i].id = i;


  dce_v8_0_audio_enable(adev, &adev->mode_info.audio.pin[i], 0);
 }

 return 0;
}
