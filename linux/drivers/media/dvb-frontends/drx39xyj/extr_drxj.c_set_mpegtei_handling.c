
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxj_data {scalar_t__ disable_te_ihandling; } ;
struct drx_demod_instance {scalar_t__ my_ext_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;


 int FEC_OC_DPR_MODE_ERR_DISABLE__M ;
 int FEC_OC_DPR_MODE__A ;
 int FEC_OC_EMS_MODE_MODE__B ;
 int FEC_OC_EMS_MODE_MODE__M ;
 int FEC_OC_EMS_MODE__A ;
 int FEC_OC_SNC_MODE_CORR_DISABLE__M ;
 int FEC_OC_SNC_MODE_ERROR_CTL__B ;
 int FEC_OC_SNC_MODE_ERROR_CTL__M ;
 int FEC_OC_SNC_MODE__A ;
 int drxj_dap_read_reg16 (struct i2c_device_addr*,int ,int*,int ) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int set_mpegtei_handling(struct drx_demod_instance *demod)
{
 struct drxj_data *ext_attr = (struct drxj_data *) (((void*)0));
 struct i2c_device_addr *dev_addr = (struct i2c_device_addr *)(((void*)0));
 int rc;
 u16 fec_oc_dpr_mode = 0;
 u16 fec_oc_snc_mode = 0;
 u16 fec_oc_ems_mode = 0;

 dev_addr = demod->my_i2c_dev_addr;
 ext_attr = (struct drxj_data *) demod->my_ext_attr;

 rc = drxj_dap_read_reg16(dev_addr, FEC_OC_DPR_MODE__A, &fec_oc_dpr_mode, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_read_reg16(dev_addr, FEC_OC_SNC_MODE__A, &fec_oc_snc_mode, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_read_reg16(dev_addr, FEC_OC_EMS_MODE__A, &fec_oc_ems_mode, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 fec_oc_dpr_mode &= (~FEC_OC_DPR_MODE_ERR_DISABLE__M);
 fec_oc_snc_mode &= (~(FEC_OC_SNC_MODE_ERROR_CTL__M |
      FEC_OC_SNC_MODE_CORR_DISABLE__M));
 fec_oc_ems_mode &= (~FEC_OC_EMS_MODE_MODE__M);

 if (ext_attr->disable_te_ihandling) {

  fec_oc_dpr_mode |= FEC_OC_DPR_MODE_ERR_DISABLE__M;
  fec_oc_snc_mode |= FEC_OC_SNC_MODE_CORR_DISABLE__M |
      ((0x2) << (FEC_OC_SNC_MODE_ERROR_CTL__B));
  fec_oc_ems_mode |= ((0x01) << (FEC_OC_EMS_MODE_MODE__B));
 }

 rc = drxj_dap_write_reg16(dev_addr, FEC_OC_DPR_MODE__A, fec_oc_dpr_mode, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, FEC_OC_SNC_MODE__A, fec_oc_snc_mode, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, FEC_OC_EMS_MODE__A, fec_oc_ems_mode, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 return 0;
rw_error:
 return rc;
}
