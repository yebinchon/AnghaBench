
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int family; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int ARRAY_SIZE (int ) ;




 int r7xx_golden_dyn_gpr_registers ;
 int r7xx_golden_registers ;
 int radeon_program_register_sequence (struct radeon_device*,int ,int const) ;
 int rv710_golden_registers ;
 int rv710_mgcg_init ;
 int rv730_golden_registers ;
 int rv730_mgcg_init ;
 int rv740_golden_registers ;
 int rv740_mgcg_init ;
 int rv770_golden_registers ;
 int rv770_mgcg_init ;
 int rv770ce_golden_registers ;

__attribute__((used)) static void rv770_init_golden_registers(struct radeon_device *rdev)
{
 switch (rdev->family) {
 case 128:
  radeon_program_register_sequence(rdev,
       r7xx_golden_registers,
       (const u32)ARRAY_SIZE(r7xx_golden_registers));
  radeon_program_register_sequence(rdev,
       r7xx_golden_dyn_gpr_registers,
       (const u32)ARRAY_SIZE(r7xx_golden_dyn_gpr_registers));
  if (rdev->pdev->device == 0x994e)
   radeon_program_register_sequence(rdev,
        rv770ce_golden_registers,
        (const u32)ARRAY_SIZE(rv770ce_golden_registers));
  else
   radeon_program_register_sequence(rdev,
        rv770_golden_registers,
        (const u32)ARRAY_SIZE(rv770_golden_registers));
  radeon_program_register_sequence(rdev,
       rv770_mgcg_init,
       (const u32)ARRAY_SIZE(rv770_mgcg_init));
  break;
 case 130:
  radeon_program_register_sequence(rdev,
       r7xx_golden_registers,
       (const u32)ARRAY_SIZE(r7xx_golden_registers));
  radeon_program_register_sequence(rdev,
       r7xx_golden_dyn_gpr_registers,
       (const u32)ARRAY_SIZE(r7xx_golden_dyn_gpr_registers));
  radeon_program_register_sequence(rdev,
       rv730_golden_registers,
       (const u32)ARRAY_SIZE(rv730_golden_registers));
  radeon_program_register_sequence(rdev,
       rv730_mgcg_init,
       (const u32)ARRAY_SIZE(rv730_mgcg_init));
  break;
 case 131:
  radeon_program_register_sequence(rdev,
       r7xx_golden_registers,
       (const u32)ARRAY_SIZE(r7xx_golden_registers));
  radeon_program_register_sequence(rdev,
       r7xx_golden_dyn_gpr_registers,
       (const u32)ARRAY_SIZE(r7xx_golden_dyn_gpr_registers));
  radeon_program_register_sequence(rdev,
       rv710_golden_registers,
       (const u32)ARRAY_SIZE(rv710_golden_registers));
  radeon_program_register_sequence(rdev,
       rv710_mgcg_init,
       (const u32)ARRAY_SIZE(rv710_mgcg_init));
  break;
 case 129:
  radeon_program_register_sequence(rdev,
       rv740_golden_registers,
       (const u32)ARRAY_SIZE(rv740_golden_registers));
  radeon_program_register_sequence(rdev,
       rv740_mgcg_init,
       (const u32)ARRAY_SIZE(rv740_mgcg_init));
  break;
 default:
  break;
 }
}
