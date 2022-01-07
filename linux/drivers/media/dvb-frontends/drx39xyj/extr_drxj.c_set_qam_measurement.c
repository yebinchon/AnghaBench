
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxj_data {int fec_bits_desired; int fec_rs_prescale; int standard; int fec_rs_plen; int fec_rs_period; int fec_vd_plen; int qam_vd_prescale; int qam_vd_period; } ;
struct drx_demod_instance {scalar_t__ my_ext_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;
typedef enum drx_modulation { ____Placeholder_drx_modulation } drx_modulation ;
 int EINVAL ;
 int EIO ;
 int FEC_OC_SNC_FAIL_PERIOD__A ;
 int FEC_RS_MEASUREMENT_PERIOD__A ;
 int FEC_RS_MEASUREMENT_PRESCALE__A ;
 int QAM_TOP_CONSTELLATION_QAM256 ;
 int QAM_TOP_CONSTELLATION_QAM64 ;
 int QAM_VD_MEASUREMENT_PERIOD__A ;
 int QAM_VD_MEASUREMENT_PRESCALE__A ;
 int SCU_RAM_FEC_ACCUM_CW_CORRECTED_LO__A ;
 int SCU_RAM_FEC_ACCUM_PKT_FAILURES__A ;
 int SCU_RAM_FEC_MEAS_COUNT__A ;
 int drxdap_fasi_write_reg32 (struct i2c_device_addr*,int ,int ,int ) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int,int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int
set_qam_measurement(struct drx_demod_instance *demod,
      enum drx_modulation constellation, u32 symbol_rate)
{
 struct i2c_device_addr *dev_addr = ((void*)0);
 struct drxj_data *ext_attr = ((void*)0);
 int rc;
 u32 fec_bits_desired = 0;
 u16 fec_rs_plen = 0;
 u16 fec_rs_prescale = 0;
 u32 fec_rs_period = 0;
 u32 fec_rs_bit_cnt = 0;
 u32 fec_oc_snc_fail_period = 0;
 u32 qam_vd_period = 0;
 u32 qam_vd_bit_cnt = 0;
 u16 fec_vd_plen = 0;
 u16 qam_vd_prescale = 0;

 dev_addr = demod->my_i2c_dev_addr;
 ext_attr = (struct drxj_data *) demod->my_ext_attr;

 fec_bits_desired = ext_attr->fec_bits_desired;
 fec_rs_prescale = ext_attr->fec_rs_prescale;

 switch (constellation) {
 case 134:
  fec_bits_desired = 4 * symbol_rate;
  break;
 case 132:
  fec_bits_desired = 5 * symbol_rate;
  break;
 case 131:
  fec_bits_desired = 6 * symbol_rate;
  break;
 case 135:
  fec_bits_desired = 7 * symbol_rate;
  break;
 case 133:
  fec_bits_desired = 8 * symbol_rate;
  break;
 default:
  return -EINVAL;
 }
 switch (ext_attr->standard) {
 case 130:
 case 128:
  fec_rs_plen = 204 * 8;
  break;
 case 129:
  fec_rs_plen = 128 * 7;
  break;
 default:
  return -EINVAL;
 }

 ext_attr->fec_rs_plen = fec_rs_plen;
 fec_rs_bit_cnt = fec_rs_prescale * fec_rs_plen;
 if (fec_rs_bit_cnt == 0) {
  pr_err("error: fec_rs_bit_cnt is zero!\n");
  return -EIO;
 }
 fec_rs_period = fec_bits_desired / fec_rs_bit_cnt + 1;
 if (ext_attr->standard != 129)
  fec_oc_snc_fail_period = fec_rs_period;


 if (fec_rs_period > 0xFFFF)
  fec_rs_period = 0xFFFF;


 switch (ext_attr->standard) {
 case 130:
 case 128:
  break;
 case 129:
  switch (constellation) {
  case 131:
   fec_rs_period = 31581;
   fec_oc_snc_fail_period = 17932;
   break;
  case 133:
   fec_rs_period = 45446;
   fec_oc_snc_fail_period = 25805;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 rc = drxj_dap_write_reg16(dev_addr, FEC_OC_SNC_FAIL_PERIOD__A, (u16)fec_oc_snc_fail_period, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, FEC_RS_MEASUREMENT_PERIOD__A, (u16)fec_rs_period, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, FEC_RS_MEASUREMENT_PRESCALE__A, fec_rs_prescale, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 ext_attr->fec_rs_period = (u16) fec_rs_period;
 ext_attr->fec_rs_prescale = fec_rs_prescale;
 rc = drxdap_fasi_write_reg32(dev_addr, SCU_RAM_FEC_ACCUM_CW_CORRECTED_LO__A, 0, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_FEC_MEAS_COUNT__A, 0, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_FEC_ACCUM_PKT_FAILURES__A, 0, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 if (ext_attr->standard == 129) {
  fec_vd_plen = ext_attr->fec_vd_plen;
  qam_vd_prescale = ext_attr->qam_vd_prescale;
  qam_vd_bit_cnt = qam_vd_prescale * fec_vd_plen;

  switch (constellation) {
  case 131:

   qam_vd_period =
       qam_vd_bit_cnt * (QAM_TOP_CONSTELLATION_QAM64 + 1)
       * (QAM_TOP_CONSTELLATION_QAM64 + 1);
   break;
  case 133:

   qam_vd_period =
       qam_vd_bit_cnt * (QAM_TOP_CONSTELLATION_QAM256 + 1)
       * (QAM_TOP_CONSTELLATION_QAM256 + 1);
   break;
  default:
   return -EINVAL;
  }
  if (qam_vd_period == 0) {
   pr_err("error: qam_vd_period is zero!\n");
   return -EIO;
  }
  qam_vd_period = fec_bits_desired / qam_vd_period;

  if (qam_vd_period > 0xFFFF)
   qam_vd_period = 0xFFFF;


  qam_vd_bit_cnt *= qam_vd_period;

  rc = drxj_dap_write_reg16(dev_addr, QAM_VD_MEASUREMENT_PERIOD__A, (u16)qam_vd_period, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, QAM_VD_MEASUREMENT_PRESCALE__A, qam_vd_prescale, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  ext_attr->qam_vd_period = (u16) qam_vd_period;
  ext_attr->qam_vd_prescale = qam_vd_prescale;
 }

 return 0;
rw_error:
 return rc;
}
