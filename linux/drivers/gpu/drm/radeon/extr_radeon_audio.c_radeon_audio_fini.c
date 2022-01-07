
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; int num_pins; int * pin; } ;
struct radeon_device {TYPE_1__ audio; } ;


 int radeon_audio_enable (struct radeon_device*,int *,int ) ;

void radeon_audio_fini(struct radeon_device *rdev)
{
 int i;

 if (!rdev->audio.enabled)
  return;

 for (i = 0; i < rdev->audio.num_pins; i++)
  radeon_audio_enable(rdev, &rdev->audio.pin[i], 0);

 rdev->audio.enabled = 0;
}
