
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int family; } ;


 int ARRAY_SIZE (int ) ;





 int bonaire_golden_common_registers ;
 int bonaire_golden_registers ;
 int bonaire_golden_spm_registers ;
 int bonaire_mgcg_cgcg_init ;
 int godavari_golden_registers ;
 int hawaii_golden_common_registers ;
 int hawaii_golden_registers ;
 int hawaii_golden_spm_registers ;
 int hawaii_mgcg_cgcg_init ;
 int kalindi_golden_common_registers ;
 int kalindi_golden_registers ;
 int kalindi_golden_spm_registers ;
 int kalindi_mgcg_cgcg_init ;
 int radeon_program_register_sequence (struct radeon_device*,int ,int const) ;
 int spectre_golden_common_registers ;
 int spectre_golden_registers ;
 int spectre_golden_spm_registers ;
 int spectre_mgcg_cgcg_init ;

__attribute__((used)) static void cik_init_golden_registers(struct radeon_device *rdev)
{
 switch (rdev->family) {
 case 132:
  radeon_program_register_sequence(rdev,
       bonaire_mgcg_cgcg_init,
       (const u32)ARRAY_SIZE(bonaire_mgcg_cgcg_init));
  radeon_program_register_sequence(rdev,
       bonaire_golden_registers,
       (const u32)ARRAY_SIZE(bonaire_golden_registers));
  radeon_program_register_sequence(rdev,
       bonaire_golden_common_registers,
       (const u32)ARRAY_SIZE(bonaire_golden_common_registers));
  radeon_program_register_sequence(rdev,
       bonaire_golden_spm_registers,
       (const u32)ARRAY_SIZE(bonaire_golden_spm_registers));
  break;
 case 130:
  radeon_program_register_sequence(rdev,
       kalindi_mgcg_cgcg_init,
       (const u32)ARRAY_SIZE(kalindi_mgcg_cgcg_init));
  radeon_program_register_sequence(rdev,
       kalindi_golden_registers,
       (const u32)ARRAY_SIZE(kalindi_golden_registers));
  radeon_program_register_sequence(rdev,
       kalindi_golden_common_registers,
       (const u32)ARRAY_SIZE(kalindi_golden_common_registers));
  radeon_program_register_sequence(rdev,
       kalindi_golden_spm_registers,
       (const u32)ARRAY_SIZE(kalindi_golden_spm_registers));
  break;
 case 128:
  radeon_program_register_sequence(rdev,
       kalindi_mgcg_cgcg_init,
       (const u32)ARRAY_SIZE(kalindi_mgcg_cgcg_init));
  radeon_program_register_sequence(rdev,
       godavari_golden_registers,
       (const u32)ARRAY_SIZE(godavari_golden_registers));
  radeon_program_register_sequence(rdev,
       kalindi_golden_common_registers,
       (const u32)ARRAY_SIZE(kalindi_golden_common_registers));
  radeon_program_register_sequence(rdev,
       kalindi_golden_spm_registers,
       (const u32)ARRAY_SIZE(kalindi_golden_spm_registers));
  break;
 case 129:
  radeon_program_register_sequence(rdev,
       spectre_mgcg_cgcg_init,
       (const u32)ARRAY_SIZE(spectre_mgcg_cgcg_init));
  radeon_program_register_sequence(rdev,
       spectre_golden_registers,
       (const u32)ARRAY_SIZE(spectre_golden_registers));
  radeon_program_register_sequence(rdev,
       spectre_golden_common_registers,
       (const u32)ARRAY_SIZE(spectre_golden_common_registers));
  radeon_program_register_sequence(rdev,
       spectre_golden_spm_registers,
       (const u32)ARRAY_SIZE(spectre_golden_spm_registers));
  break;
 case 131:
  radeon_program_register_sequence(rdev,
       hawaii_mgcg_cgcg_init,
       (const u32)ARRAY_SIZE(hawaii_mgcg_cgcg_init));
  radeon_program_register_sequence(rdev,
       hawaii_golden_registers,
       (const u32)ARRAY_SIZE(hawaii_golden_registers));
  radeon_program_register_sequence(rdev,
       hawaii_golden_common_registers,
       (const u32)ARRAY_SIZE(hawaii_golden_common_registers));
  radeon_program_register_sequence(rdev,
       hawaii_golden_spm_registers,
       (const u32)ARRAY_SIZE(hawaii_golden_spm_registers));
  break;
 default:
  break;
 }
}
