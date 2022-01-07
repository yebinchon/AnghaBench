
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int family; } ;


 int ARRAY_SIZE (int ) ;





 int hainan_golden_registers ;
 int hainan_golden_registers2 ;
 int hainan_mgcg_cgcg_init ;
 int oland_golden_registers ;
 int oland_golden_rlc_registers ;
 int oland_mgcg_cgcg_init ;
 int pitcairn_golden_registers ;
 int pitcairn_golden_rlc_registers ;
 int pitcairn_mgcg_cgcg_init ;
 int radeon_program_register_sequence (struct radeon_device*,int ,int const) ;
 int tahiti_golden_registers ;
 int tahiti_golden_registers2 ;
 int tahiti_golden_rlc_registers ;
 int tahiti_mgcg_cgcg_init ;
 int verde_golden_registers ;
 int verde_golden_rlc_registers ;
 int verde_mgcg_cgcg_init ;
 int verde_pg_init ;

__attribute__((used)) static void si_init_golden_registers(struct radeon_device *rdev)
{
 switch (rdev->family) {
 case 129:
  radeon_program_register_sequence(rdev,
       tahiti_golden_registers,
       (const u32)ARRAY_SIZE(tahiti_golden_registers));
  radeon_program_register_sequence(rdev,
       tahiti_golden_rlc_registers,
       (const u32)ARRAY_SIZE(tahiti_golden_rlc_registers));
  radeon_program_register_sequence(rdev,
       tahiti_mgcg_cgcg_init,
       (const u32)ARRAY_SIZE(tahiti_mgcg_cgcg_init));
  radeon_program_register_sequence(rdev,
       tahiti_golden_registers2,
       (const u32)ARRAY_SIZE(tahiti_golden_registers2));
  break;
 case 130:
  radeon_program_register_sequence(rdev,
       pitcairn_golden_registers,
       (const u32)ARRAY_SIZE(pitcairn_golden_registers));
  radeon_program_register_sequence(rdev,
       pitcairn_golden_rlc_registers,
       (const u32)ARRAY_SIZE(pitcairn_golden_rlc_registers));
  radeon_program_register_sequence(rdev,
       pitcairn_mgcg_cgcg_init,
       (const u32)ARRAY_SIZE(pitcairn_mgcg_cgcg_init));
  break;
 case 128:
  radeon_program_register_sequence(rdev,
       verde_golden_registers,
       (const u32)ARRAY_SIZE(verde_golden_registers));
  radeon_program_register_sequence(rdev,
       verde_golden_rlc_registers,
       (const u32)ARRAY_SIZE(verde_golden_rlc_registers));
  radeon_program_register_sequence(rdev,
       verde_mgcg_cgcg_init,
       (const u32)ARRAY_SIZE(verde_mgcg_cgcg_init));
  radeon_program_register_sequence(rdev,
       verde_pg_init,
       (const u32)ARRAY_SIZE(verde_pg_init));
  break;
 case 131:
  radeon_program_register_sequence(rdev,
       oland_golden_registers,
       (const u32)ARRAY_SIZE(oland_golden_registers));
  radeon_program_register_sequence(rdev,
       oland_golden_rlc_registers,
       (const u32)ARRAY_SIZE(oland_golden_rlc_registers));
  radeon_program_register_sequence(rdev,
       oland_mgcg_cgcg_init,
       (const u32)ARRAY_SIZE(oland_mgcg_cgcg_init));
  break;
 case 132:
  radeon_program_register_sequence(rdev,
       hainan_golden_registers,
       (const u32)ARRAY_SIZE(hainan_golden_registers));
  radeon_program_register_sequence(rdev,
       hainan_golden_registers2,
       (const u32)ARRAY_SIZE(hainan_golden_registers2));
  radeon_program_register_sequence(rdev,
       hainan_mgcg_cgcg_init,
       (const u32)ARRAY_SIZE(hainan_mgcg_cgcg_init));
  break;
 default:
  break;
 }
}
