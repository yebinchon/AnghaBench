
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;


 int ARRAY_SIZE (int ) ;
 int BUG () ;





 int amdgpu_device_program_register_sequence (struct amdgpu_device*,int ,int ) ;
 int hainan_golden_registers ;
 int hainan_golden_registers2 ;
 int hainan_mgcg_cgcg_init ;
 int oland_golden_registers ;
 int oland_golden_rlc_registers ;
 int oland_mgcg_cgcg_init ;
 int pitcairn_golden_registers ;
 int pitcairn_golden_rlc_registers ;
 int pitcairn_mgcg_cgcg_init ;
 int tahiti_golden_registers ;
 int tahiti_golden_registers2 ;
 int tahiti_golden_rlc_registers ;
 int tahiti_mgcg_cgcg_init ;
 int verde_golden_registers ;
 int verde_golden_rlc_registers ;
 int verde_mgcg_cgcg_init ;
 int verde_pg_init ;

__attribute__((used)) static void si_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 129:
  amdgpu_device_program_register_sequence(adev,
       tahiti_golden_registers,
       ARRAY_SIZE(tahiti_golden_registers));
  amdgpu_device_program_register_sequence(adev,
       tahiti_golden_rlc_registers,
       ARRAY_SIZE(tahiti_golden_rlc_registers));
  amdgpu_device_program_register_sequence(adev,
       tahiti_mgcg_cgcg_init,
       ARRAY_SIZE(tahiti_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       tahiti_golden_registers2,
       ARRAY_SIZE(tahiti_golden_registers2));
  break;
 case 130:
  amdgpu_device_program_register_sequence(adev,
       pitcairn_golden_registers,
       ARRAY_SIZE(pitcairn_golden_registers));
  amdgpu_device_program_register_sequence(adev,
       pitcairn_golden_rlc_registers,
       ARRAY_SIZE(pitcairn_golden_rlc_registers));
  amdgpu_device_program_register_sequence(adev,
       pitcairn_mgcg_cgcg_init,
       ARRAY_SIZE(pitcairn_mgcg_cgcg_init));
  break;
 case 128:
  amdgpu_device_program_register_sequence(adev,
       verde_golden_registers,
       ARRAY_SIZE(verde_golden_registers));
  amdgpu_device_program_register_sequence(adev,
       verde_golden_rlc_registers,
       ARRAY_SIZE(verde_golden_rlc_registers));
  amdgpu_device_program_register_sequence(adev,
       verde_mgcg_cgcg_init,
       ARRAY_SIZE(verde_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       verde_pg_init,
       ARRAY_SIZE(verde_pg_init));
  break;
 case 131:
  amdgpu_device_program_register_sequence(adev,
       oland_golden_registers,
       ARRAY_SIZE(oland_golden_registers));
  amdgpu_device_program_register_sequence(adev,
       oland_golden_rlc_registers,
       ARRAY_SIZE(oland_golden_rlc_registers));
  amdgpu_device_program_register_sequence(adev,
       oland_mgcg_cgcg_init,
       ARRAY_SIZE(oland_mgcg_cgcg_init));
  break;
 case 132:
  amdgpu_device_program_register_sequence(adev,
       hainan_golden_registers,
       ARRAY_SIZE(hainan_golden_registers));
  amdgpu_device_program_register_sequence(adev,
       hainan_golden_registers2,
       ARRAY_SIZE(hainan_golden_registers2));
  amdgpu_device_program_register_sequence(adev,
       hainan_mgcg_cgcg_init,
       ARRAY_SIZE(hainan_mgcg_cgcg_init));
  break;


 default:
  BUG();
 }
}
