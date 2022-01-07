
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int WREG32 (int ,int ) ;

__attribute__((used)) static void radeon_audio_wreg(struct radeon_device *rdev, u32 offset,
  u32 reg, u32 v)
{
 WREG32(reg, v);
}
