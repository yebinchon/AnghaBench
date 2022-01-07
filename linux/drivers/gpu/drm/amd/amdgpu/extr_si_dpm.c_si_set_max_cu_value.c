
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si_power_info {int max_cu; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 scalar_t__ CHIP_VERDE ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void si_set_max_cu_value(struct amdgpu_device *adev)
{
 struct si_power_info *si_pi = si_get_pi(adev);

 if (adev->asic_type == CHIP_VERDE) {
  switch (adev->pdev->device) {
  case 0x6820:
  case 0x6825:
  case 0x6821:
  case 0x6823:
  case 0x6827:
   si_pi->max_cu = 10;
   break;
  case 0x682D:
  case 0x6824:
  case 0x682F:
  case 0x6826:
   si_pi->max_cu = 8;
   break;
  case 0x6828:
  case 0x6830:
  case 0x6831:
  case 0x6838:
  case 0x6839:
  case 0x683D:
   si_pi->max_cu = 10;
   break;
  case 0x683B:
  case 0x683F:
  case 0x6829:
   si_pi->max_cu = 8;
   break;
  default:
   si_pi->max_cu = 0;
   break;
  }
 } else {
  si_pi->max_cu = 0;
 }
}
