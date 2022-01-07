
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_dm_backlight_caps {int caps_valid; int max_input_signal; int min_input_signal; } ;
struct amdgpu_device {TYPE_2__* atif; } ;
struct TYPE_3__ {int caps_valid; int max_input_signal; int min_input_signal; } ;
struct TYPE_4__ {TYPE_1__ backlight_caps; } ;



void amdgpu_acpi_get_backlight_caps(struct amdgpu_device *adev,
  struct amdgpu_dm_backlight_caps *caps)
{
 if (!adev->atif) {
  caps->caps_valid = 0;
  return;
 }
 caps->caps_valid = adev->atif->backlight_caps.caps_valid;
 caps->min_input_signal = adev->atif->backlight_caps.min_input_signal;
 caps->max_input_signal = adev->atif->backlight_caps.max_input_signal;
}
