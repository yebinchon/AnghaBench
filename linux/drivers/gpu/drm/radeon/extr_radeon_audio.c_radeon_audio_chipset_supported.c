
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 scalar_t__ ASIC_IS_DCE2 (struct radeon_device*) ;
 int ASIC_IS_NODCE (struct radeon_device*) ;

__attribute__((used)) static int radeon_audio_chipset_supported(struct radeon_device *rdev)
{
 return ASIC_IS_DCE2(rdev) && !ASIC_IS_NODCE(rdev);
}
