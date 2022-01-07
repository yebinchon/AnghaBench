
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drx_demod_instance {struct i2c_device_addr* my_i2c_dev_addr; } ;


 int EIO ;
 int IQM_AF_CLKNEG_CLKNEGDATA__M ;
 int IQM_AF_CLKNEG__A ;
 int adc_sync_measurement (struct drx_demod_instance*,int*) ;
 int drxj_dap_read_reg16 (struct i2c_device_addr*,int ,int*,int ) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int adc_synchronization(struct drx_demod_instance *demod)
{
 struct i2c_device_addr *dev_addr = ((void*)0);
 int rc;
 u16 count = 0;

 dev_addr = demod->my_i2c_dev_addr;

 rc = adc_sync_measurement(demod, &count);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 if (count == 1) {

  u16 clk_neg = 0;

  rc = drxj_dap_read_reg16(dev_addr, IQM_AF_CLKNEG__A, &clk_neg, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }

  clk_neg ^= IQM_AF_CLKNEG_CLKNEGDATA__M;
  rc = drxj_dap_write_reg16(dev_addr, IQM_AF_CLKNEG__A, clk_neg, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }

  rc = adc_sync_measurement(demod, &count);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 }


 if (count < 2)
  return -EIO;

 return 0;
rw_error:
 return rc;
}
