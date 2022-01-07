
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_device_addr {int dummy; } ;
struct drxj_data {int standard; int qam_pga_cfg; int vsb_pga_cfg; } ;
struct drxj_cfg_afe_gain {int standard; int gain; } ;
struct drx_demod_instance {scalar_t__ my_ext_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;






 int EINVAL ;
 int EIO ;
 int IQM_AF_PGA_GAIN__A ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int
ctrl_set_cfg_afe_gain(struct drx_demod_instance *demod, struct drxj_cfg_afe_gain *afe_gain)
{
 struct i2c_device_addr *dev_addr = ((void*)0);
 struct drxj_data *ext_attr = ((void*)0);
 int rc;
 u8 gain = 0;


 if (afe_gain == ((void*)0))
  return -EINVAL;

 dev_addr = demod->my_i2c_dev_addr;
 ext_attr = (struct drxj_data *) demod->my_ext_attr;

 switch (afe_gain->standard) {
 case 131:

 case 130:
 case 129:
 case 128:


  break;
 default:
  return -EINVAL;
 }




 if (afe_gain->gain >= 329)
  gain = 15;
 else if (afe_gain->gain <= 147)
  gain = 0;
 else
  gain = (afe_gain->gain - 140 + 6) / 13;


 if (ext_attr->standard == afe_gain->standard) {
   rc = drxj_dap_write_reg16(dev_addr, IQM_AF_PGA_GAIN__A, gain, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
  }


 switch (afe_gain->standard) {
 case 131:
  ext_attr->vsb_pga_cfg = gain * 13 + 140;
  break;

 case 130:
 case 129:
 case 128:
  ext_attr->qam_pga_cfg = gain * 13 + 140;
  break;

 default:
  return -EIO;
 }

 return 0;
rw_error:
 return rc;
}
