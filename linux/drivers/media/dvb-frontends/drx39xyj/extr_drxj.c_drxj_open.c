
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxu_code_info {int * mc_file; } ;
struct drxj_data {int aud_data; int standard; } ;
struct drx_demod_instance {TYPE_1__* my_common_attr; int * my_ext_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;
struct drx_common_attr {int is_opened; int verify_microcode; int scan_desired_lock; int scan_demod_lock_timeout; int * microcode_file; int mpeg_cfg; } ;
struct drx_cfg_mpeg_output {int enable_mpeg_output; } ;
typedef enum drx_power_mode { ____Placeholder_drx_power_mode } drx_power_mode ;
typedef int cfg_mpeg_output ;
struct TYPE_2__ {int is_opened; int current_power_mode; } ;


 int ATV_TOP_STDBY_CVBS_STDBY_A2_ACTIVE ;
 int ATV_TOP_STDBY_SIF_STDBY_STANDBY ;
 int ATV_TOP_STDBY__A ;
 int DRXJ_SCAN_TIMEOUT ;
 scalar_t__ DRX_ISPOWERDOWNMODE (int ) ;
 int DRX_LOCKED ;
 int DRX_POWER_UP ;
 int DRX_STANDARD_UNKNOWN ;
 int EINVAL ;
 int SCU_COMM_EXEC_ACTIVE ;
 int SCU_COMM_EXEC_STOP ;
 int SCU_COMM_EXEC__A ;
 int SCU_RAM_DRIVER_VER_HI__A ;
 int SCU_RAM_DRIVER_VER_LO__A ;
 int SIO_CC_SOFT_RST_OSC__M ;
 int SIO_CC_SOFT_RST_SYS__M ;
 int SIO_CC_SOFT_RST__A ;
 int SIO_CC_UPDATE_KEY ;
 int SIO_CC_UPDATE__A ;
 int UCODE_UPLOAD ;
 int UCODE_VERIFY ;
 int VERSION_MAJOR ;
 int VERSION_MINOR ;
 int VERSION_PATCH ;
 int ctrl_power_mode (struct drx_demod_instance*,int*) ;
 int ctrl_set_cfg_mpeg_output (struct drx_demod_instance*,struct drx_cfg_mpeg_output*) ;
 int ctrl_set_oob (struct drx_demod_instance*,int *) ;
 int drx_ctrl_u_code (struct drx_demod_instance*,struct drxu_code_info*,int ) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int,int ) ;
 int drxj_default_aud_data_g ;
 int drxj_reset_mode (struct drxj_data*) ;
 int drxj_set_lna_state (struct drx_demod_instance*,int) ;
 int get_device_capabilities (struct drx_demod_instance*) ;
 int init_hi (struct drx_demod_instance*) ;
 int memcpy (struct drx_cfg_mpeg_output*,int *,int) ;
 int msleep (int) ;
 int power_down_aud (struct drx_demod_instance*) ;
 int pr_err (char*,...) ;
 int set_iqm_af (struct drx_demod_instance*,int) ;
 int set_orx_nsu_aox (struct drx_demod_instance*,int) ;
 int smart_ant_init (struct drx_demod_instance*) ;

__attribute__((used)) static int drxj_open(struct drx_demod_instance *demod)
{
 struct i2c_device_addr *dev_addr = ((void*)0);
 struct drxj_data *ext_attr = ((void*)0);
 struct drx_common_attr *common_attr = ((void*)0);
 u32 driver_version = 0;
 struct drxu_code_info ucode_info;
 struct drx_cfg_mpeg_output cfg_mpeg_output;
 int rc;
 enum drx_power_mode power_mode = DRX_POWER_UP;

 if ((demod == ((void*)0)) ||
     (demod->my_common_attr == ((void*)0)) ||
     (demod->my_ext_attr == ((void*)0)) ||
     (demod->my_i2c_dev_addr == ((void*)0)) ||
     (demod->my_common_attr->is_opened)) {
  return -EINVAL;
 }


 if (demod->my_ext_attr == ((void*)0))
  return -EINVAL;

 dev_addr = demod->my_i2c_dev_addr;
 ext_attr = (struct drxj_data *) demod->my_ext_attr;
 common_attr = (struct drx_common_attr *) demod->my_common_attr;

 rc = ctrl_power_mode(demod, &power_mode);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 if (power_mode != DRX_POWER_UP) {
  rc = -EINVAL;
  pr_err("failed to powerup device\n");
  goto rw_error;
 }


 rc = get_device_capabilities(demod);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SIO_CC_SOFT_RST__A, (0x04 | SIO_CC_SOFT_RST_SYS__M | SIO_CC_SOFT_RST_OSC__M), 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SIO_CC_UPDATE__A, SIO_CC_UPDATE_KEY, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 msleep(1);



 rc = drxj_dap_write_reg16(dev_addr, ATV_TOP_STDBY__A, (~ATV_TOP_STDBY_CVBS_STDBY_A2_ACTIVE) | ATV_TOP_STDBY_SIF_STDBY_STANDBY, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 rc = set_iqm_af(demod, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = set_orx_nsu_aox(demod, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 rc = init_hi(demod);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 memcpy(&cfg_mpeg_output, &common_attr->mpeg_cfg, sizeof(cfg_mpeg_output));
 cfg_mpeg_output.enable_mpeg_output = 0;

 rc = ctrl_set_cfg_mpeg_output(demod, &cfg_mpeg_output);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 rc = power_down_aud(demod);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 rc = drxj_dap_write_reg16(dev_addr, SCU_COMM_EXEC__A, SCU_COMM_EXEC_STOP, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 if (common_attr->microcode_file != ((void*)0)) {


  common_attr->is_opened = 1;
  ucode_info.mc_file = common_attr->microcode_file;

  if (DRX_ISPOWERDOWNMODE(demod->my_common_attr->current_power_mode)) {
   pr_err("Should powerup before loading the firmware.");
   return -EINVAL;
  }

  rc = drx_ctrl_u_code(demod, &ucode_info, UCODE_UPLOAD);
  if (rc != 0) {
   pr_err("error %d while uploading the firmware\n", rc);
   goto rw_error;
  }
  if (common_attr->verify_microcode == 1) {
   rc = drx_ctrl_u_code(demod, &ucode_info, UCODE_VERIFY);
   if (rc != 0) {
    pr_err("error %d while verifying the firmware\n",
           rc);
    goto rw_error;
   }
  }
  common_attr->is_opened = 0;
 }


 rc = drxj_dap_write_reg16(dev_addr, SCU_COMM_EXEC__A, SCU_COMM_EXEC_ACTIVE, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 common_attr->scan_demod_lock_timeout = DRXJ_SCAN_TIMEOUT;
 common_attr->scan_desired_lock = DRX_LOCKED;

 drxj_reset_mode(ext_attr);
 ext_attr->standard = DRX_STANDARD_UNKNOWN;

 rc = smart_ant_init(demod);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }





 driver_version = (VERSION_MAJOR / 100) % 10;
 driver_version <<= 4;
 driver_version += (VERSION_MAJOR / 10) % 10;
 driver_version <<= 4;
 driver_version += (VERSION_MAJOR % 10);
 driver_version <<= 4;
 driver_version += (VERSION_MINOR % 10);
 driver_version <<= 4;
 driver_version += (VERSION_PATCH / 1000) % 10;
 driver_version <<= 4;
 driver_version += (VERSION_PATCH / 100) % 10;
 driver_version <<= 4;
 driver_version += (VERSION_PATCH / 10) % 10;
 driver_version <<= 4;
 driver_version += (VERSION_PATCH % 10);
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_DRIVER_VER_HI__A, (u16)(driver_version >> 16), 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_DRIVER_VER_LO__A, (u16)(driver_version & 0xFFFF), 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 rc = ctrl_set_oob(demod, ((void*)0));
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 ext_attr->aud_data = drxj_default_aud_data_g;

 demod->my_common_attr->is_opened = 1;
 drxj_set_lna_state(demod, 0);
 return 0;
rw_error:
 common_attr->is_opened = 0;
 return rc;
}
