
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct radeon_device {TYPE_2__ audio; } ;
struct TYPE_3__ {int (* endpoint_wreg ) (struct radeon_device*,int ,int ,int ) ;} ;


 int stub1 (struct radeon_device*,int ,int ,int ) ;

void radeon_audio_endpoint_wreg(struct radeon_device *rdev, u32 offset,
 u32 reg, u32 v)
{
 if (rdev->audio.funcs->endpoint_wreg)
  rdev->audio.funcs->endpoint_wreg(rdev, offset, reg, v);
}
