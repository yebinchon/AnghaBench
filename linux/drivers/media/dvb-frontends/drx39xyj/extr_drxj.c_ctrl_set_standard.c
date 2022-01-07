
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drxj_data {int standard; } ;
struct drx_demod_instance {int my_i2c_dev_addr; scalar_t__ my_ext_attr; } ;
typedef enum drx_standard { ____Placeholder_drx_standard } drx_standard ;
 int EINVAL ;
 int SCU_RAM_VERSION_HI__A ;
 int drxj_dap_read_reg16 (int ,int ,int *,int ) ;
 int power_down_qam (struct drx_demod_instance*,int) ;
 int power_down_vsb (struct drx_demod_instance*,int) ;
 int pr_err (char*,int) ;
 int set_vsb_leak_n_gain (struct drx_demod_instance*) ;

__attribute__((used)) static int
ctrl_set_standard(struct drx_demod_instance *demod, enum drx_standard *standard)
{
 struct drxj_data *ext_attr = ((void*)0);
 int rc;
 enum drx_standard prev_standard;


 if ((standard == ((void*)0)) || (demod == ((void*)0)))
  return -EINVAL;

 ext_attr = (struct drxj_data *) demod->my_ext_attr;
 prev_standard = ext_attr->standard;




 switch (prev_standard) {

 case 131:
 case 130:
 case 129:
  rc = power_down_qam(demod, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  break;

 case 133:
  rc = power_down_vsb(demod, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  break;
 case 128:

  break;
 case 132:
 default:
  return -EINVAL;
 }





 ext_attr->standard = *standard;

 switch (*standard) {

 case 131:
 case 130:
 case 129:
  do {
   u16 dummy;
   rc = drxj_dap_read_reg16(demod->my_i2c_dev_addr, SCU_RAM_VERSION_HI__A, &dummy, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
  } while (0);
  break;

 case 133:
  rc = set_vsb_leak_n_gain(demod);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  break;
 default:
  ext_attr->standard = 128;
  return -EINVAL;
  break;
 }

 return 0;
rw_error:

 ext_attr->standard = 128;
 return rc;
}
