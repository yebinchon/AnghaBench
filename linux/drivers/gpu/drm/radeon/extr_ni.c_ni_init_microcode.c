
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {int family; int flags; TYPE_1__* mc_fw; TYPE_1__* rlc_fw; TYPE_1__* me_fw; TYPE_1__* pfp_fw; TYPE_1__* smc_fw; int dev; } ;
typedef int fw_name ;
struct TYPE_3__ {size_t size; } ;


 size_t ALIGN (int ,int) ;
 int ARUBA_RLC_UCODE_SIZE ;
 int BARTS_SMC_UCODE_SIZE ;
 int BTC_MC_UCODE_SIZE ;
 int BUG () ;
 int CAICOS_SMC_UCODE_SIZE ;
 int CAYMAN_MC_UCODE_SIZE ;
 int CAYMAN_PFP_UCODE_SIZE ;
 int CAYMAN_PM4_UCODE_SIZE ;
 int CAYMAN_RLC_UCODE_SIZE ;
 int CAYMAN_SMC_UCODE_SIZE ;





 int DRM_DEBUG (char*) ;
 int DRM_INFO (char*,char const*) ;
 int EINVAL ;
 int EVERGREEN_PFP_UCODE_SIZE ;
 int EVERGREEN_PM4_UCODE_SIZE ;
 int EVERGREEN_RLC_UCODE_SIZE ;
 int RADEON_IS_IGP ;
 int TURKS_SMC_UCODE_SIZE ;
 int pr_err (char*,...) ;
 int release_firmware (TYPE_1__*) ;
 int request_firmware (TYPE_1__**,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

int ni_init_microcode(struct radeon_device *rdev)
{
 const char *chip_name;
 const char *rlc_chip_name;
 size_t pfp_req_size, me_req_size, rlc_req_size, mc_req_size;
 size_t smc_req_size = 0;
 char fw_name[30];
 int err;

 DRM_DEBUG("\n");

 switch (rdev->family) {
 case 131:
  chip_name = "BARTS";
  rlc_chip_name = "BTC";
  pfp_req_size = EVERGREEN_PFP_UCODE_SIZE * 4;
  me_req_size = EVERGREEN_PM4_UCODE_SIZE * 4;
  rlc_req_size = EVERGREEN_RLC_UCODE_SIZE * 4;
  mc_req_size = BTC_MC_UCODE_SIZE * 4;
  smc_req_size = ALIGN(BARTS_SMC_UCODE_SIZE, 4);
  break;
 case 128:
  chip_name = "TURKS";
  rlc_chip_name = "BTC";
  pfp_req_size = EVERGREEN_PFP_UCODE_SIZE * 4;
  me_req_size = EVERGREEN_PM4_UCODE_SIZE * 4;
  rlc_req_size = EVERGREEN_RLC_UCODE_SIZE * 4;
  mc_req_size = BTC_MC_UCODE_SIZE * 4;
  smc_req_size = ALIGN(TURKS_SMC_UCODE_SIZE, 4);
  break;
 case 130:
  chip_name = "CAICOS";
  rlc_chip_name = "BTC";
  pfp_req_size = EVERGREEN_PFP_UCODE_SIZE * 4;
  me_req_size = EVERGREEN_PM4_UCODE_SIZE * 4;
  rlc_req_size = EVERGREEN_RLC_UCODE_SIZE * 4;
  mc_req_size = BTC_MC_UCODE_SIZE * 4;
  smc_req_size = ALIGN(CAICOS_SMC_UCODE_SIZE, 4);
  break;
 case 129:
  chip_name = "CAYMAN";
  rlc_chip_name = "CAYMAN";
  pfp_req_size = CAYMAN_PFP_UCODE_SIZE * 4;
  me_req_size = CAYMAN_PM4_UCODE_SIZE * 4;
  rlc_req_size = CAYMAN_RLC_UCODE_SIZE * 4;
  mc_req_size = CAYMAN_MC_UCODE_SIZE * 4;
  smc_req_size = ALIGN(CAYMAN_SMC_UCODE_SIZE, 4);
  break;
 case 132:
  chip_name = "ARUBA";
  rlc_chip_name = "ARUBA";

  pfp_req_size = CAYMAN_PFP_UCODE_SIZE * 4;
  me_req_size = CAYMAN_PM4_UCODE_SIZE * 4;
  rlc_req_size = ARUBA_RLC_UCODE_SIZE * 4;
  mc_req_size = 0;
  break;
 default: BUG();
 }

 DRM_INFO("Loading %s Microcode\n", chip_name);

 snprintf(fw_name, sizeof(fw_name), "radeon/%s_pfp.bin", chip_name);
 err = request_firmware(&rdev->pfp_fw, fw_name, rdev->dev);
 if (err)
  goto out;
 if (rdev->pfp_fw->size != pfp_req_size) {
  pr_err("ni_cp: Bogus length %zu in firmware \"%s\"\n",
         rdev->pfp_fw->size, fw_name);
  err = -EINVAL;
  goto out;
 }

 snprintf(fw_name, sizeof(fw_name), "radeon/%s_me.bin", chip_name);
 err = request_firmware(&rdev->me_fw, fw_name, rdev->dev);
 if (err)
  goto out;
 if (rdev->me_fw->size != me_req_size) {
  pr_err("ni_cp: Bogus length %zu in firmware \"%s\"\n",
         rdev->me_fw->size, fw_name);
  err = -EINVAL;
 }

 snprintf(fw_name, sizeof(fw_name), "radeon/%s_rlc.bin", rlc_chip_name);
 err = request_firmware(&rdev->rlc_fw, fw_name, rdev->dev);
 if (err)
  goto out;
 if (rdev->rlc_fw->size != rlc_req_size) {
  pr_err("ni_rlc: Bogus length %zu in firmware \"%s\"\n",
         rdev->rlc_fw->size, fw_name);
  err = -EINVAL;
 }


 if (!(rdev->flags & RADEON_IS_IGP)) {
  snprintf(fw_name, sizeof(fw_name), "radeon/%s_mc.bin", chip_name);
  err = request_firmware(&rdev->mc_fw, fw_name, rdev->dev);
  if (err)
   goto out;
  if (rdev->mc_fw->size != mc_req_size) {
   pr_err("ni_mc: Bogus length %zu in firmware \"%s\"\n",
          rdev->mc_fw->size, fw_name);
   err = -EINVAL;
  }
 }

 if ((rdev->family >= 131) && (rdev->family <= 129)) {
  snprintf(fw_name, sizeof(fw_name), "radeon/%s_smc.bin", chip_name);
  err = request_firmware(&rdev->smc_fw, fw_name, rdev->dev);
  if (err) {
   pr_err("smc: error loading firmware \"%s\"\n", fw_name);
   release_firmware(rdev->smc_fw);
   rdev->smc_fw = ((void*)0);
   err = 0;
  } else if (rdev->smc_fw->size != smc_req_size) {
   pr_err("ni_mc: Bogus length %zu in firmware \"%s\"\n",
          rdev->mc_fw->size, fw_name);
   err = -EINVAL;
  }
 }

out:
 if (err) {
  if (err != -EINVAL)
   pr_err("ni_cp: Failed to load firmware \"%s\"\n",
          fw_name);
  release_firmware(rdev->pfp_fw);
  rdev->pfp_fw = ((void*)0);
  release_firmware(rdev->me_fw);
  rdev->me_fw = ((void*)0);
  release_firmware(rdev->rlc_fw);
  rdev->rlc_fw = ((void*)0);
  release_firmware(rdev->mc_fw);
  rdev->mc_fw = ((void*)0);
 }
 return err;
}
