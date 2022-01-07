
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct r600_audio_pin* pin; } ;
struct radeon_device {TYPE_1__ audio; } ;
struct r600_audio_pin {int dummy; } ;



struct r600_audio_pin *r600_audio_get_pin(struct radeon_device *rdev)
{

 return &rdev->audio.pin[0];
}
