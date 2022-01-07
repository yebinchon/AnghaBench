
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct radeon_device {TYPE_2__ audio; } ;
struct TYPE_3__ {int (* endpoint_rreg ) (struct radeon_device*,int ,int ) ;} ;


 int stub1 (struct radeon_device*,int ,int ) ;

u32 radeon_audio_endpoint_rreg(struct radeon_device *rdev, u32 offset, u32 reg)
{
 if (rdev->audio.funcs->endpoint_rreg)
  return rdev->audio.funcs->endpoint_rreg(rdev, offset, reg);

 return 0;
}
