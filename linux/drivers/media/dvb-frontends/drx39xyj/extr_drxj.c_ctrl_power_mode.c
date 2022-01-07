
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxj_data {int standard; int hi_cfg_ctrl; } ;
struct drx_demod_instance {struct i2c_device_addr* my_i2c_dev_addr; scalar_t__ my_ext_attr; scalar_t__ my_common_attr; } ;
struct drx_common_attr {int current_power_mode; } ;
typedef enum drx_power_mode { ____Placeholder_drx_power_mode } drx_power_mode ;
 int EINVAL ;
 int EIO ;
 int SIO_CC_PWD_MODE_LEVEL_CLOCK ;
 int SIO_CC_PWD_MODE_LEVEL_NONE ;
 int SIO_CC_PWD_MODE_LEVEL_OSC ;
 int SIO_CC_PWD_MODE_LEVEL_PLL ;
 int SIO_CC_PWD_MODE__A ;
 int SIO_CC_UPDATE_KEY ;
 int SIO_CC_UPDATE__A ;
 int SIO_HI_RA_RAM_PAR_5_CFG_SLEEP_ZZZ ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int ,int ) ;
 int drxj_reset_mode (struct drxj_data*) ;
 int hi_cfg_command (struct drx_demod_instance*) ;
 int init_hi (struct drx_demod_instance*) ;
 int power_down_atv (struct drx_demod_instance*,int,int) ;
 int power_down_qam (struct drx_demod_instance*,int) ;
 int power_down_vsb (struct drx_demod_instance*,int) ;
 int power_up_device (struct drx_demod_instance*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int
ctrl_power_mode(struct drx_demod_instance *demod, enum drx_power_mode *mode)
{
 struct drx_common_attr *common_attr = (struct drx_common_attr *) ((void*)0);
 struct drxj_data *ext_attr = (struct drxj_data *) ((void*)0);
 struct i2c_device_addr *dev_addr = (struct i2c_device_addr *)((void*)0);
 int rc;
 u16 sio_cc_pwd_mode = 0;

 common_attr = (struct drx_common_attr *) demod->my_common_attr;
 ext_attr = (struct drxj_data *) demod->my_ext_attr;
 dev_addr = demod->my_i2c_dev_addr;


 if (mode == ((void*)0))
  return -EINVAL;


 if (common_attr->current_power_mode == *mode)
  return 0;

 switch (*mode) {
 case 141:
 case 144:
  sio_cc_pwd_mode = SIO_CC_PWD_MODE_LEVEL_NONE;
  break;
 case 145:
  sio_cc_pwd_mode = SIO_CC_PWD_MODE_LEVEL_CLOCK;
  break;
 case 143:
  sio_cc_pwd_mode = SIO_CC_PWD_MODE_LEVEL_PLL;
  break;
 case 142:
  sio_cc_pwd_mode = SIO_CC_PWD_MODE_LEVEL_OSC;
  break;
 default:

  return -EINVAL;
  break;
 }


 if ((common_attr->current_power_mode != 141)) {
  rc = power_up_device(demod);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 }

 if (*mode == 141) {



  drxj_reset_mode(ext_attr);
 } else {
  switch (ext_attr->standard) {
  case 137:
  case 136:
  case 135:
   rc = power_down_qam(demod, 1);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   break;
  case 140:
   rc = power_down_vsb(demod, 1);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   break;
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 134:
  case 138:
   rc = power_down_atv(demod, ext_attr->standard, 1);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   break;
  case 128:

   break;
  case 139:
  default:
   return -EIO;
  }
  ext_attr->standard = 128;
 }

 if (*mode != 144) {
  rc = drxj_dap_write_reg16(dev_addr, SIO_CC_PWD_MODE__A, sio_cc_pwd_mode, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SIO_CC_UPDATE__A, SIO_CC_UPDATE_KEY, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }

  if ((*mode != 141)) {

   rc = init_hi(demod);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }

   ext_attr->hi_cfg_ctrl |= SIO_HI_RA_RAM_PAR_5_CFG_SLEEP_ZZZ;
   rc = hi_cfg_command(demod);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
  }
 }

 common_attr->current_power_mode = *mode;

 return 0;
rw_error:
 return rc;
}
