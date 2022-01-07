
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned long long u64 ;
struct hfi1_devdata {int dc8051_ver; } ;
struct firmware_details {int signature; int firmware_len; int firmware_ptr; } ;


 int DC_DC8051_CFG_RST ;
 unsigned long long DC_DC8051_CFG_RST_CRAM_SMASK ;
 unsigned long long DC_DC8051_CFG_RST_DRAM_SMASK ;
 unsigned long long DC_DC8051_CFG_RST_IRAM_SMASK ;
 unsigned long long DC_DC8051_CFG_RST_M8051W_SMASK ;
 unsigned long long DC_DC8051_CFG_RST_SFR_SMASK ;
 int EIO ;
 int ETIMEDOUT ;
 int HCMD_SUCCESS ;
 int HOST_INTERFACE_VERSION ;
 int MISC_CFG_FW_CTRL ;
 unsigned long long MISC_CFG_FW_CTRL_FW_8051_LOADED_SMASK ;
 int TIMEOUT_8051_START ;
 int dc8051_ver (scalar_t__,scalar_t__,scalar_t__) ;
 int dd_dev_err (struct hfi1_devdata*,char*,int) ;
 int dd_dev_info (struct hfi1_devdata*,char*,int,int,int) ;
 int get_firmware_state (struct hfi1_devdata*) ;
 int load_security_variables (struct hfi1_devdata*,struct firmware_details*) ;
 int read_misc_status (struct hfi1_devdata*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int run_rsa (struct hfi1_devdata*,char*,int ) ;
 int wait_fm_ready (struct hfi1_devdata*,int ) ;
 int write_8051 (struct hfi1_devdata*,int,int ,int ,int ) ;
 int write_csr (struct hfi1_devdata*,int ,unsigned long long) ;
 int write_host_interface_version (struct hfi1_devdata*,int ) ;

__attribute__((used)) static int load_8051_firmware(struct hfi1_devdata *dd,
         struct firmware_details *fdet)
{
 u64 reg;
 int ret;
 u8 ver_major;
 u8 ver_minor;
 u8 ver_patch;
 reg = DC_DC8051_CFG_RST_M8051W_SMASK
  | DC_DC8051_CFG_RST_CRAM_SMASK
  | DC_DC8051_CFG_RST_DRAM_SMASK
  | DC_DC8051_CFG_RST_IRAM_SMASK
  | DC_DC8051_CFG_RST_SFR_SMASK;
 write_csr(dd, DC_DC8051_CFG_RST, reg);
 reg = DC_DC8051_CFG_RST_M8051W_SMASK;
 write_csr(dd, DC_DC8051_CFG_RST, reg);


 load_security_variables(dd, fdet);




 write_csr(dd, MISC_CFG_FW_CTRL, 0);


 ret = write_8051(dd, 1 , 0, fdet->firmware_ptr,
    fdet->firmware_len);
 if (ret)
  return ret;







 write_csr(dd, MISC_CFG_FW_CTRL, MISC_CFG_FW_CTRL_FW_8051_LOADED_SMASK);


 ret = run_rsa(dd, "8051", fdet->signature);
 if (ret)
  return ret;


 write_csr(dd, DC_DC8051_CFG_RST, 0ull);





 ret = wait_fm_ready(dd, TIMEOUT_8051_START);
 if (ret) {
  dd_dev_err(dd, "8051 start timeout, current state 0x%x\n",
      get_firmware_state(dd));
  return -ETIMEDOUT;
 }

 read_misc_status(dd, &ver_major, &ver_minor, &ver_patch);
 dd_dev_info(dd, "8051 firmware version %d.%d.%d\n",
      (int)ver_major, (int)ver_minor, (int)ver_patch);
 dd->dc8051_ver = dc8051_ver(ver_major, ver_minor, ver_patch);
 ret = write_host_interface_version(dd, HOST_INTERFACE_VERSION);
 if (ret != HCMD_SUCCESS) {
  dd_dev_err(dd,
      "Failed to set host interface version, return 0x%x\n",
      ret);
  return -EIO;
 }

 return 0;
}
