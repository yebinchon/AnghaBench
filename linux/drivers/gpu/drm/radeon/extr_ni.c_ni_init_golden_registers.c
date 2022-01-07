
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int family; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int ARRAY_SIZE (int ) ;


 int cayman_golden_registers ;
 int cayman_golden_registers2 ;
 int dvst_golden_registers ;
 int dvst_golden_registers2 ;
 int radeon_program_register_sequence (struct radeon_device*,int ,int const) ;
 int scrapper_golden_registers ;

__attribute__((used)) static void ni_init_golden_registers(struct radeon_device *rdev)
{
 switch (rdev->family) {
 case 128:
  radeon_program_register_sequence(rdev,
       cayman_golden_registers,
       (const u32)ARRAY_SIZE(cayman_golden_registers));
  radeon_program_register_sequence(rdev,
       cayman_golden_registers2,
       (const u32)ARRAY_SIZE(cayman_golden_registers2));
  break;
 case 129:
  if ((rdev->pdev->device == 0x9900) ||
      (rdev->pdev->device == 0x9901) ||
      (rdev->pdev->device == 0x9903) ||
      (rdev->pdev->device == 0x9904) ||
      (rdev->pdev->device == 0x9905) ||
      (rdev->pdev->device == 0x9906) ||
      (rdev->pdev->device == 0x9907) ||
      (rdev->pdev->device == 0x9908) ||
      (rdev->pdev->device == 0x9909) ||
      (rdev->pdev->device == 0x990A) ||
      (rdev->pdev->device == 0x990B) ||
      (rdev->pdev->device == 0x990C) ||
      (rdev->pdev->device == 0x990D) ||
      (rdev->pdev->device == 0x990E) ||
      (rdev->pdev->device == 0x990F) ||
      (rdev->pdev->device == 0x9910) ||
      (rdev->pdev->device == 0x9913) ||
      (rdev->pdev->device == 0x9917) ||
      (rdev->pdev->device == 0x9918)) {
   radeon_program_register_sequence(rdev,
        dvst_golden_registers,
        (const u32)ARRAY_SIZE(dvst_golden_registers));
   radeon_program_register_sequence(rdev,
        dvst_golden_registers2,
        (const u32)ARRAY_SIZE(dvst_golden_registers2));
  } else {
   radeon_program_register_sequence(rdev,
        scrapper_golden_registers,
        (const u32)ARRAY_SIZE(scrapper_golden_registers));
   radeon_program_register_sequence(rdev,
        dvst_golden_registers2,
        (const u32)ARRAY_SIZE(dvst_golden_registers2));
  }
  break;
 default:
  break;
 }
}
