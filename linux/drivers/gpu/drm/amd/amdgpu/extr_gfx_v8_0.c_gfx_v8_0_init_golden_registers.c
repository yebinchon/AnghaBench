
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_device {int asic_type; TYPE_1__* pdev; } ;
struct TYPE_2__ {int revision; int subsystem_device; int subsystem_vendor; } ;


 int ARRAY_SIZE (int ) ;
 int WREG32_SMC (int ,int) ;
 int amdgpu_atombios_i2c_channel_trans (struct amdgpu_device*,int,int,int,int) ;
 int amdgpu_device_program_register_sequence (struct amdgpu_device*,int ,int ) ;
 int cz_golden_common_all ;
 int cz_golden_settings_a11 ;
 int cz_mgcg_cgcg_init ;
 int fiji_golden_common_all ;
 int fiji_mgcg_cgcg_init ;
 int golden_settings_fiji_a10 ;
 int golden_settings_iceland_a11 ;
 int golden_settings_polaris10_a11 ;
 int golden_settings_polaris11_a11 ;
 int golden_settings_tonga_a11 ;
 int golden_settings_vegam_a11 ;
 int iceland_golden_common_all ;
 int iceland_mgcg_cgcg_init ;
 int ixCG_ACLK_CNTL ;
 int polaris10_golden_common_all ;
 int polaris11_golden_common_all ;
 int stoney_golden_common_all ;
 int stoney_golden_settings_a11 ;
 int stoney_mgcg_cgcg_init ;
 int tonga_golden_common_all ;
 int tonga_mgcg_cgcg_init ;
 int vegam_golden_common_all ;

__attribute__((used)) static void gfx_v8_0_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 129:
  amdgpu_device_program_register_sequence(adev,
       iceland_mgcg_cgcg_init,
       ARRAY_SIZE(iceland_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       golden_settings_iceland_a11,
       ARRAY_SIZE(golden_settings_iceland_a11));
  amdgpu_device_program_register_sequence(adev,
       iceland_golden_common_all,
       ARRAY_SIZE(iceland_golden_common_all));
  break;
 case 135:
  amdgpu_device_program_register_sequence(adev,
       fiji_mgcg_cgcg_init,
       ARRAY_SIZE(fiji_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       golden_settings_fiji_a10,
       ARRAY_SIZE(golden_settings_fiji_a10));
  amdgpu_device_program_register_sequence(adev,
       fiji_golden_common_all,
       ARRAY_SIZE(fiji_golden_common_all));
  break;

 case 130:
  amdgpu_device_program_register_sequence(adev,
       tonga_mgcg_cgcg_init,
       ARRAY_SIZE(tonga_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       golden_settings_tonga_a11,
       ARRAY_SIZE(golden_settings_tonga_a11));
  amdgpu_device_program_register_sequence(adev,
       tonga_golden_common_all,
       ARRAY_SIZE(tonga_golden_common_all));
  break;
 case 128:
  amdgpu_device_program_register_sequence(adev,
       golden_settings_vegam_a11,
       ARRAY_SIZE(golden_settings_vegam_a11));
  amdgpu_device_program_register_sequence(adev,
       vegam_golden_common_all,
       ARRAY_SIZE(vegam_golden_common_all));
  break;
 case 133:
 case 132:
  amdgpu_device_program_register_sequence(adev,
       golden_settings_polaris11_a11,
       ARRAY_SIZE(golden_settings_polaris11_a11));
  amdgpu_device_program_register_sequence(adev,
       polaris11_golden_common_all,
       ARRAY_SIZE(polaris11_golden_common_all));
  break;
 case 134:
  amdgpu_device_program_register_sequence(adev,
       golden_settings_polaris10_a11,
       ARRAY_SIZE(golden_settings_polaris10_a11));
  amdgpu_device_program_register_sequence(adev,
       polaris10_golden_common_all,
       ARRAY_SIZE(polaris10_golden_common_all));
  WREG32_SMC(ixCG_ACLK_CNTL, 0x0000001C);
  if (adev->pdev->revision == 0xc7 &&
      ((adev->pdev->subsystem_device == 0xb37 && adev->pdev->subsystem_vendor == 0x1002) ||
       (adev->pdev->subsystem_device == 0x4a8 && adev->pdev->subsystem_vendor == 0x1043) ||
       (adev->pdev->subsystem_device == 0x9480 && adev->pdev->subsystem_vendor == 0x1682))) {
   amdgpu_atombios_i2c_channel_trans(adev, 0x10, 0x96, 0x1E, 0xDD);
   amdgpu_atombios_i2c_channel_trans(adev, 0x10, 0x96, 0x1F, 0xD0);
  }
  break;
 case 136:
  amdgpu_device_program_register_sequence(adev,
       cz_mgcg_cgcg_init,
       ARRAY_SIZE(cz_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       cz_golden_settings_a11,
       ARRAY_SIZE(cz_golden_settings_a11));
  amdgpu_device_program_register_sequence(adev,
       cz_golden_common_all,
       ARRAY_SIZE(cz_golden_common_all));
  break;
 case 131:
  amdgpu_device_program_register_sequence(adev,
       stoney_mgcg_cgcg_init,
       ARRAY_SIZE(stoney_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       stoney_golden_settings_a11,
       ARRAY_SIZE(stoney_golden_settings_a11));
  amdgpu_device_program_register_sequence(adev,
       stoney_golden_common_all,
       ARRAY_SIZE(stoney_golden_common_all));
  break;
 default:
  break;
 }
}
