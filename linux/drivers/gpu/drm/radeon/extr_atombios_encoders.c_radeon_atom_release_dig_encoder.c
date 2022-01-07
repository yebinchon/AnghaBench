
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active_encoders; } ;
struct radeon_device {TYPE_1__ mode_info; } ;



void radeon_atom_release_dig_encoder(struct radeon_device *rdev, int enc_idx)
{
 if (enc_idx < 0)
  return;
 rdev->mode_info.active_encoders &= ~(1 << enc_idx);
}
