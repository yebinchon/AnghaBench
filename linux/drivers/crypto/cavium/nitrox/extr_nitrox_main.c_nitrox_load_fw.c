
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ucd_core_eid_ucode_block_num {unsigned long long value; int ucode_len; scalar_t__ ucode_blk; } ;
union aqm_grp_execmsk_lo {int exec_0_to_39; unsigned long long value; } ;
union aqm_grp_execmsk_hi {int exec_40_to_79; unsigned long long value; } ;
typedef int u64 ;
typedef int u32 ;
struct ucode {int version; int * code; int code_size; } ;
struct TYPE_2__ {char** fw_name; int se_cores; int ae_cores; } ;
struct nitrox_device {TYPE_1__ hw; } ;
struct firmware {scalar_t__ data; } ;


 char* AE_FW ;
 int AQM_GRP_EXECMSK_HIX (int ) ;
 int AQM_GRP_EXECMSK_LOX (int ) ;
 int CNN55XX_MAX_UCODE_SIZE ;
 int CNN55XX_UCD_BLOCK_SIZE ;
 int DEFAULT_AE_GROUP ;
 int DEFAULT_SE_GROUP ;
 int DEV (struct nitrox_device*) ;
 int EINVAL ;
 int POM_GRP_EXECMASKX (int ) ;
 char* SE_FW ;
 int UCD_AE_EID_UCODE_BLOCK_NUMX (int) ;
 int UCD_SE_EID_UCODE_BLOCK_NUMX (int) ;
 int VERSION_LEN ;
 int be32_to_cpu (int ) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,char const*) ;
 int memcpy (char*,int ,int) ;
 int nitrox_write_csr (struct nitrox_device*,int ,unsigned long long) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int ) ;
 int write_to_ucd_unit (struct nitrox_device*,int,int *,int) ;

__attribute__((used)) static int nitrox_load_fw(struct nitrox_device *ndev)
{
 const struct firmware *fw;
 const char *fw_name;
 struct ucode *ucode;
 u64 *ucode_data;
 u64 offset;
 union ucd_core_eid_ucode_block_num core_2_eid_val;
 union aqm_grp_execmsk_lo aqm_grp_execmask_lo;
 union aqm_grp_execmsk_hi aqm_grp_execmask_hi;
 u32 ucode_size;
 int ret, i = 0;

 fw_name = SE_FW;
 dev_info(DEV(ndev), "Loading firmware \"%s\"\n", fw_name);

 ret = request_firmware(&fw, fw_name, DEV(ndev));
 if (ret < 0) {
  dev_err(DEV(ndev), "failed to get firmware %s\n", fw_name);
  return ret;
 }

 ucode = (struct ucode *)fw->data;

 ucode_size = be32_to_cpu(ucode->code_size) * 2;
 if (!ucode_size || ucode_size > CNN55XX_MAX_UCODE_SIZE) {
  dev_err(DEV(ndev), "Invalid ucode size: %u for firmware %s\n",
   ucode_size, fw_name);
  release_firmware(fw);
  return -EINVAL;
 }
 ucode_data = ucode->code;


 memcpy(&ndev->hw.fw_name[0][0], ucode->version, (VERSION_LEN - 2));
 ndev->hw.fw_name[0][VERSION_LEN - 1] = '\0';


 write_to_ucd_unit(ndev, ucode_size, ucode_data, 0);

 release_firmware(fw);


 offset = POM_GRP_EXECMASKX(DEFAULT_SE_GROUP);
 nitrox_write_csr(ndev, offset, (~0ULL));






 core_2_eid_val.value = 0ULL;
 core_2_eid_val.ucode_blk = 0;
 if (ucode_size <= CNN55XX_UCD_BLOCK_SIZE)
  core_2_eid_val.ucode_len = 1;
 else
  core_2_eid_val.ucode_len = 0;

 for (i = 0; i < ndev->hw.se_cores; i++) {
  offset = UCD_SE_EID_UCODE_BLOCK_NUMX(i);
  nitrox_write_csr(ndev, offset, core_2_eid_val.value);
 }


 fw_name = AE_FW;
 dev_info(DEV(ndev), "Loading firmware \"%s\"\n", fw_name);

 ret = request_firmware(&fw, fw_name, DEV(ndev));
 if (ret < 0) {
  dev_err(DEV(ndev), "failed to get firmware %s\n", fw_name);
  return ret;
 }

 ucode = (struct ucode *)fw->data;

 ucode_size = be32_to_cpu(ucode->code_size) * 2;
 if (!ucode_size || ucode_size > CNN55XX_MAX_UCODE_SIZE) {
  dev_err(DEV(ndev), "Invalid ucode size: %u for firmware %s\n",
   ucode_size, fw_name);
  release_firmware(fw);
  return -EINVAL;
 }
 ucode_data = ucode->code;


 memcpy(&ndev->hw.fw_name[1][0], ucode->version, (VERSION_LEN - 2));
 ndev->hw.fw_name[1][VERSION_LEN - 1] = '\0';


 write_to_ucd_unit(ndev, ucode_size, ucode_data, 2);

 release_firmware(fw);


 offset = AQM_GRP_EXECMSK_LOX(DEFAULT_AE_GROUP);
 aqm_grp_execmask_lo.exec_0_to_39 = 0xFFFFFFFFFFULL;
 nitrox_write_csr(ndev, offset, aqm_grp_execmask_lo.value);
 offset = AQM_GRP_EXECMSK_HIX(DEFAULT_AE_GROUP);
 aqm_grp_execmask_hi.exec_40_to_79 = 0xFFFFFFFFFFULL;
 nitrox_write_csr(ndev, offset, aqm_grp_execmask_hi.value);






 core_2_eid_val.value = 0ULL;
 core_2_eid_val.ucode_blk = 0;
 if (ucode_size <= CNN55XX_UCD_BLOCK_SIZE)
  core_2_eid_val.ucode_len = 1;
 else
  core_2_eid_val.ucode_len = 0;

 for (i = 0; i < ndev->hw.ae_cores; i++) {
  offset = UCD_AE_EID_UCODE_BLOCK_NUMX(i);
  nitrox_write_csr(ndev, offset, core_2_eid_val.value);
 }

 return 0;
}
