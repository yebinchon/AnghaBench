
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32 (int ) ;

__attribute__((used)) static u32 radeon_audio_rreg(struct radeon_device *rdev, u32 offset, u32 reg)
{
 return RREG32(reg);
}
