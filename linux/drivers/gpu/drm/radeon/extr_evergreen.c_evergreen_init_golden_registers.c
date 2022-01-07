
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int family; } ;


 int ARRAY_SIZE (int ) ;
 int barts_golden_registers ;
 int caicos_golden_registers ;
 int cedar_golden_registers ;
 int cedar_mgcg_init ;
 int cypress_mgcg_init ;
 int evergreen_golden_registers ;
 int evergreen_golden_registers2 ;
 int juniper_mgcg_init ;
 int radeon_program_register_sequence (struct radeon_device*,int ,int const) ;
 int redwood_mgcg_init ;
 int sumo_golden_registers ;
 int supersumo_golden_registers ;
 int turks_golden_registers ;
 int wrestler_golden_registers ;

__attribute__((used)) static void evergreen_init_golden_registers(struct radeon_device *rdev)
{
 switch (rdev->family) {
 case 135:
 case 134:
  radeon_program_register_sequence(rdev,
       evergreen_golden_registers,
       (const u32)ARRAY_SIZE(evergreen_golden_registers));
  radeon_program_register_sequence(rdev,
       evergreen_golden_registers2,
       (const u32)ARRAY_SIZE(evergreen_golden_registers2));
  radeon_program_register_sequence(rdev,
       cypress_mgcg_init,
       (const u32)ARRAY_SIZE(cypress_mgcg_init));
  break;
 case 133:
  radeon_program_register_sequence(rdev,
       evergreen_golden_registers,
       (const u32)ARRAY_SIZE(evergreen_golden_registers));
  radeon_program_register_sequence(rdev,
       evergreen_golden_registers2,
       (const u32)ARRAY_SIZE(evergreen_golden_registers2));
  radeon_program_register_sequence(rdev,
       juniper_mgcg_init,
       (const u32)ARRAY_SIZE(juniper_mgcg_init));
  break;
 case 131:
  radeon_program_register_sequence(rdev,
       evergreen_golden_registers,
       (const u32)ARRAY_SIZE(evergreen_golden_registers));
  radeon_program_register_sequence(rdev,
       evergreen_golden_registers2,
       (const u32)ARRAY_SIZE(evergreen_golden_registers2));
  radeon_program_register_sequence(rdev,
       redwood_mgcg_init,
       (const u32)ARRAY_SIZE(redwood_mgcg_init));
  break;
 case 136:
  radeon_program_register_sequence(rdev,
       cedar_golden_registers,
       (const u32)ARRAY_SIZE(cedar_golden_registers));
  radeon_program_register_sequence(rdev,
       evergreen_golden_registers2,
       (const u32)ARRAY_SIZE(evergreen_golden_registers2));
  radeon_program_register_sequence(rdev,
       cedar_mgcg_init,
       (const u32)ARRAY_SIZE(cedar_mgcg_init));
  break;
 case 132:
  radeon_program_register_sequence(rdev,
       wrestler_golden_registers,
       (const u32)ARRAY_SIZE(wrestler_golden_registers));
  break;
 case 130:
  radeon_program_register_sequence(rdev,
       supersumo_golden_registers,
       (const u32)ARRAY_SIZE(supersumo_golden_registers));
  break;
 case 129:
  radeon_program_register_sequence(rdev,
       supersumo_golden_registers,
       (const u32)ARRAY_SIZE(supersumo_golden_registers));
  radeon_program_register_sequence(rdev,
       sumo_golden_registers,
       (const u32)ARRAY_SIZE(sumo_golden_registers));
  break;
 case 138:
  radeon_program_register_sequence(rdev,
       barts_golden_registers,
       (const u32)ARRAY_SIZE(barts_golden_registers));
  break;
 case 128:
  radeon_program_register_sequence(rdev,
       turks_golden_registers,
       (const u32)ARRAY_SIZE(turks_golden_registers));
  break;
 case 137:
  radeon_program_register_sequence(rdev,
       caicos_golden_registers,
       (const u32)ARRAY_SIZE(caicos_golden_registers));
  break;
 default:
  break;
 }
}
