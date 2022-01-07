
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {int family; TYPE_1__* smc_fw; TYPE_1__* rlc_fw; TYPE_1__* me_fw; TYPE_1__* pfp_fw; int dev; } ;
typedef int fw_name ;
struct TYPE_3__ {size_t size; } ;


 size_t ALIGN (int ,int) ;
 int BUG () ;
 int CEDAR_SMC_UCODE_SIZE ;
 int CYPRESS_SMC_UCODE_SIZE ;
 int DRM_DEBUG (char*) ;
 int DRM_INFO (char*,char const*) ;
 int EINVAL ;
 int EVERGREEN_PFP_UCODE_SIZE ;
 int EVERGREEN_PM4_UCODE_SIZE ;
 int EVERGREEN_RLC_UCODE_SIZE ;
 int JUNIPER_SMC_UCODE_SIZE ;
 int R600_PFP_UCODE_SIZE ;
 int R600_PM4_UCODE_SIZE ;
 int R600_RLC_UCODE_SIZE ;
 int R700_PFP_UCODE_SIZE ;
 int R700_PM4_UCODE_SIZE ;
 int R700_RLC_UCODE_SIZE ;
 int REDWOOD_SMC_UCODE_SIZE ;
 int RV710_SMC_UCODE_SIZE ;
 int RV730_SMC_UCODE_SIZE ;
 int RV740_SMC_UCODE_SIZE ;
 int RV770_SMC_UCODE_SIZE ;
 int pr_err (char*,...) ;
 int release_firmware (TYPE_1__*) ;
 int request_firmware (TYPE_1__**,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

int r600_init_microcode(struct radeon_device *rdev)
{
 const char *chip_name;
 const char *rlc_chip_name;
 const char *smc_chip_name = "RV770";
 size_t pfp_req_size, me_req_size, rlc_req_size, smc_req_size = 0;
 char fw_name[30];
 int err;

 DRM_DEBUG("\n");

 switch (rdev->family) {
 case 142:
  chip_name = "R600";
  rlc_chip_name = "R600";
  break;
 case 138:
  chip_name = "RV610";
  rlc_chip_name = "R600";
  break;
 case 136:
  chip_name = "RV630";
  rlc_chip_name = "R600";
  break;
 case 137:
  chip_name = "RV620";
  rlc_chip_name = "R600";
  break;
 case 135:
  chip_name = "RV635";
  rlc_chip_name = "R600";
  break;
 case 134:
  chip_name = "RV670";
  rlc_chip_name = "R600";
  break;
 case 140:
 case 139:
  chip_name = "RS780";
  rlc_chip_name = "R600";
  break;
 case 130:
  chip_name = "RV770";
  rlc_chip_name = "R700";
  smc_chip_name = "RV770";
  smc_req_size = ALIGN(RV770_SMC_UCODE_SIZE, 4);
  break;
 case 132:
  chip_name = "RV730";
  rlc_chip_name = "R700";
  smc_chip_name = "RV730";
  smc_req_size = ALIGN(RV730_SMC_UCODE_SIZE, 4);
  break;
 case 133:
  chip_name = "RV710";
  rlc_chip_name = "R700";
  smc_chip_name = "RV710";
  smc_req_size = ALIGN(RV710_SMC_UCODE_SIZE, 4);
  break;
 case 131:
  chip_name = "RV730";
  rlc_chip_name = "R700";
  smc_chip_name = "RV740";
  smc_req_size = ALIGN(RV740_SMC_UCODE_SIZE, 4);
  break;
 case 147:
  chip_name = "CEDAR";
  rlc_chip_name = "CEDAR";
  smc_chip_name = "CEDAR";
  smc_req_size = ALIGN(CEDAR_SMC_UCODE_SIZE, 4);
  break;
 case 141:
  chip_name = "REDWOOD";
  rlc_chip_name = "REDWOOD";
  smc_chip_name = "REDWOOD";
  smc_req_size = ALIGN(REDWOOD_SMC_UCODE_SIZE, 4);
  break;
 case 144:
  chip_name = "JUNIPER";
  rlc_chip_name = "JUNIPER";
  smc_chip_name = "JUNIPER";
  smc_req_size = ALIGN(JUNIPER_SMC_UCODE_SIZE, 4);
  break;
 case 146:
 case 145:
  chip_name = "CYPRESS";
  rlc_chip_name = "CYPRESS";
  smc_chip_name = "CYPRESS";
  smc_req_size = ALIGN(CYPRESS_SMC_UCODE_SIZE, 4);
  break;
 case 143:
  chip_name = "PALM";
  rlc_chip_name = "SUMO";
  break;
 case 129:
  chip_name = "SUMO";
  rlc_chip_name = "SUMO";
  break;
 case 128:
  chip_name = "SUMO2";
  rlc_chip_name = "SUMO";
  break;
 default: BUG();
 }

 if (rdev->family >= 147) {
  pfp_req_size = EVERGREEN_PFP_UCODE_SIZE * 4;
  me_req_size = EVERGREEN_PM4_UCODE_SIZE * 4;
  rlc_req_size = EVERGREEN_RLC_UCODE_SIZE * 4;
 } else if (rdev->family >= 130) {
  pfp_req_size = R700_PFP_UCODE_SIZE * 4;
  me_req_size = R700_PM4_UCODE_SIZE * 4;
  rlc_req_size = R700_RLC_UCODE_SIZE * 4;
 } else {
  pfp_req_size = R600_PFP_UCODE_SIZE * 4;
  me_req_size = R600_PM4_UCODE_SIZE * 12;
  rlc_req_size = R600_RLC_UCODE_SIZE * 4;
 }

 DRM_INFO("Loading %s Microcode\n", chip_name);

 snprintf(fw_name, sizeof(fw_name), "radeon/%s_pfp.bin", chip_name);
 err = request_firmware(&rdev->pfp_fw, fw_name, rdev->dev);
 if (err)
  goto out;
 if (rdev->pfp_fw->size != pfp_req_size) {
  pr_err("r600_cp: Bogus length %zu in firmware \"%s\"\n",
         rdev->pfp_fw->size, fw_name);
  err = -EINVAL;
  goto out;
 }

 snprintf(fw_name, sizeof(fw_name), "radeon/%s_me.bin", chip_name);
 err = request_firmware(&rdev->me_fw, fw_name, rdev->dev);
 if (err)
  goto out;
 if (rdev->me_fw->size != me_req_size) {
  pr_err("r600_cp: Bogus length %zu in firmware \"%s\"\n",
         rdev->me_fw->size, fw_name);
  err = -EINVAL;
 }

 snprintf(fw_name, sizeof(fw_name), "radeon/%s_rlc.bin", rlc_chip_name);
 err = request_firmware(&rdev->rlc_fw, fw_name, rdev->dev);
 if (err)
  goto out;
 if (rdev->rlc_fw->size != rlc_req_size) {
  pr_err("r600_rlc: Bogus length %zu in firmware \"%s\"\n",
         rdev->rlc_fw->size, fw_name);
  err = -EINVAL;
 }

 if ((rdev->family >= 130) && (rdev->family <= 145)) {
  snprintf(fw_name, sizeof(fw_name), "radeon/%s_smc.bin", smc_chip_name);
  err = request_firmware(&rdev->smc_fw, fw_name, rdev->dev);
  if (err) {
   pr_err("smc: error loading firmware \"%s\"\n", fw_name);
   release_firmware(rdev->smc_fw);
   rdev->smc_fw = ((void*)0);
   err = 0;
  } else if (rdev->smc_fw->size != smc_req_size) {
   pr_err("smc: Bogus length %zu in firmware \"%s\"\n",
          rdev->smc_fw->size, fw_name);
   err = -EINVAL;
  }
 }

out:
 if (err) {
  if (err != -EINVAL)
   pr_err("r600_cp: Failed to load firmware \"%s\"\n",
          fw_name);
  release_firmware(rdev->pfp_fw);
  rdev->pfp_fw = ((void*)0);
  release_firmware(rdev->me_fw);
  rdev->me_fw = ((void*)0);
  release_firmware(rdev->rlc_fw);
  rdev->rlc_fw = ((void*)0);
  release_firmware(rdev->smc_fw);
  rdev->smc_fw = ((void*)0);
 }
 return err;
}
