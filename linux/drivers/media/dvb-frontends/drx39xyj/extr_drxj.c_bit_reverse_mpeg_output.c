
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxj_data {scalar_t__ bit_reverse_mpeg_outout; } ;
struct drx_demod_instance {scalar_t__ my_ext_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;


 int FEC_OC_IPR_MODE_REVERSE_ORDER__M ;
 int FEC_OC_IPR_MODE__A ;
 int drxj_dap_read_reg16 (struct i2c_device_addr*,int ,int *,int ) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int ,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int bit_reverse_mpeg_output(struct drx_demod_instance *demod)
{
 struct drxj_data *ext_attr = (struct drxj_data *) (((void*)0));
 struct i2c_device_addr *dev_addr = (struct i2c_device_addr *)(((void*)0));
 int rc;
 u16 fec_oc_ipr_mode = 0;

 dev_addr = demod->my_i2c_dev_addr;
 ext_attr = (struct drxj_data *) demod->my_ext_attr;

 rc = drxj_dap_read_reg16(dev_addr, FEC_OC_IPR_MODE__A, &fec_oc_ipr_mode, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 fec_oc_ipr_mode &= (~FEC_OC_IPR_MODE_REVERSE_ORDER__M);

 if (ext_attr->bit_reverse_mpeg_outout)
  fec_oc_ipr_mode |= FEC_OC_IPR_MODE_REVERSE_ORDER__M;

 rc = drxj_dap_write_reg16(dev_addr, FEC_OC_IPR_MODE__A, fec_oc_ipr_mode, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 return 0;
rw_error:
 return rc;
}
