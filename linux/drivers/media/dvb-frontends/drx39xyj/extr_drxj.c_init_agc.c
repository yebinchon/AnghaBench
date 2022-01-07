
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxj_cfg_agc {int top; int cut_off_current; } ;
struct drxj_data {int standard; struct drxj_cfg_agc qam_rf_agc_cfg; struct drxj_cfg_agc qam_if_agc_cfg; struct drxj_cfg_agc vsb_rf_agc_cfg; struct drxj_cfg_agc vsb_if_agc_cfg; } ;
struct drx_demod_instance {scalar_t__ my_ext_attr; scalar_t__ my_common_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;
struct drx_common_attr {int tuner_rf_agc_pol; int tuner_if_agc_pol; } ;






 int EINVAL ;
 int IQM_AF_AGC_IF__A ;
 int IQM_AF_AGC_RF__A ;
 int SCU_RAM_AGC_CLP_CTRL_MODE__A ;
 int SCU_RAM_AGC_CLP_CYCCNT__A ;
 int SCU_RAM_AGC_CLP_CYCLEN__A ;
 int SCU_RAM_AGC_CLP_DIR_STP__A ;
 int SCU_RAM_AGC_CLP_DIR_TO__A ;
 int SCU_RAM_AGC_CLP_DIR_WD__A ;
 int SCU_RAM_AGC_CLP_SUM_MAX__A ;
 int SCU_RAM_AGC_CLP_SUM_MIN__A ;
 int SCU_RAM_AGC_CLP_SUM__A ;
 int SCU_RAM_AGC_FAST_CLP_CTRL_DELAY__A ;
 int SCU_RAM_AGC_FAST_SNS_CTRL_DELAY__A ;
 int SCU_RAM_AGC_IF_IACCU_HI_TGT_MIN__A ;
 int SCU_RAM_AGC_IF_IACCU_HI__A ;
 int SCU_RAM_AGC_IF_IACCU_LO__A ;
 int SCU_RAM_AGC_INGAIN_TGT_MAX__A ;
 int SCU_RAM_AGC_INGAIN_TGT_MIN__A ;
 int SCU_RAM_AGC_INGAIN_TGT__A ;
 int SCU_RAM_AGC_INGAIN__A ;
 int SCU_RAM_AGC_KI_CYCLEN__A ;
 int SCU_RAM_AGC_KI_DGAIN__B ;
 int SCU_RAM_AGC_KI_DGAIN__M ;
 int SCU_RAM_AGC_KI_INNERGAIN_MIN__A ;
 int SCU_RAM_AGC_KI_MAXGAIN__A ;
 int SCU_RAM_AGC_KI_MAXMINGAIN_TH__A ;
 int SCU_RAM_AGC_KI_MAX__A ;
 int SCU_RAM_AGC_KI_MINGAIN__A ;
 int SCU_RAM_AGC_KI_MIN__A ;
 int SCU_RAM_AGC_KI_RED__A ;
 int SCU_RAM_AGC_KI__A ;
 int SCU_RAM_AGC_RF_IACCU_HI__A ;
 int SCU_RAM_AGC_RF_IACCU_LO__A ;
 int SCU_RAM_AGC_RF_MAX__A ;
 int SCU_RAM_AGC_SNS_CYCCNT__A ;
 int SCU_RAM_AGC_SNS_CYCLEN__A ;
 int SCU_RAM_AGC_SNS_DIR_STP__A ;
 int SCU_RAM_AGC_SNS_DIR_TO__A ;
 int SCU_RAM_AGC_SNS_DIR_WD__A ;
 int SCU_RAM_AGC_SNS_SUM_MAX__A ;
 int SCU_RAM_AGC_SNS_SUM_MIN__A ;
 int SCU_RAM_AGC_SNS_SUM__A ;
 int SCU_RAM_VSB_AGC_POW_TGT__A ;
 int drxj_dap_read_reg16 (struct i2c_device_addr*,int ,int*,int ) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int init_agc(struct drx_demod_instance *demod)
{
 struct i2c_device_addr *dev_addr = ((void*)0);
 struct drx_common_attr *common_attr = ((void*)0);
 struct drxj_data *ext_attr = ((void*)0);
 struct drxj_cfg_agc *p_agc_rf_settings = ((void*)0);
 struct drxj_cfg_agc *p_agc_if_settings = ((void*)0);
 int rc;
 u16 ingain_tgt_max = 0;
 u16 clp_dir_to = 0;
 u16 sns_sum_max = 0;
 u16 clp_sum_max = 0;
 u16 sns_dir_to = 0;
 u16 ki_innergain_min = 0;
 u16 agc_ki = 0;
 u16 ki_max = 0;
 u16 if_iaccu_hi_tgt_min = 0;
 u16 data = 0;
 u16 agc_ki_dgain = 0;
 u16 ki_min = 0;
 u16 clp_ctrl_mode = 0;
 u16 agc_rf = 0;
 u16 agc_if = 0;

 dev_addr = demod->my_i2c_dev_addr;
 common_attr = (struct drx_common_attr *) demod->my_common_attr;
 ext_attr = (struct drxj_data *) demod->my_ext_attr;

 switch (ext_attr->standard) {
 case 131:
  clp_sum_max = 1023;
  clp_dir_to = (u16) (-9);
  sns_sum_max = 1023;
  sns_dir_to = (u16) (-9);
  ki_innergain_min = (u16) (-32768);
  ki_max = 0x032C;
  agc_ki_dgain = 0xC;
  if_iaccu_hi_tgt_min = 2047;
  ki_min = 0x0117;
  ingain_tgt_max = 16383;
  clp_ctrl_mode = 0;
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI_MINGAIN__A, 0x7fff, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI_MAXGAIN__A, 0x0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_SUM__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_CYCCNT__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_DIR_WD__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_DIR_STP__A, 1, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_SUM__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_CYCCNT__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_DIR_WD__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_DIR_STP__A, 1, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_INGAIN__A, 1024, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_VSB_AGC_POW_TGT__A, 22600, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_INGAIN_TGT__A, 13200, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  p_agc_if_settings = &(ext_attr->vsb_if_agc_cfg);
  p_agc_rf_settings = &(ext_attr->vsb_rf_agc_cfg);
  break;

 case 130:
 case 128:
 case 129:
  ingain_tgt_max = 5119;
  clp_sum_max = 1023;
  clp_dir_to = (u16) (-5);
  sns_sum_max = 127;
  sns_dir_to = (u16) (-3);
  ki_innergain_min = 0;
  ki_max = 0x0657;
  if_iaccu_hi_tgt_min = 2047;
  agc_ki_dgain = 0x7;
  ki_min = 0x0117;
  clp_ctrl_mode = 0;
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI_MINGAIN__A, 0x7fff, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI_MAXGAIN__A, 0x0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_SUM__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_CYCCNT__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_DIR_WD__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_DIR_STP__A, 1, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_SUM__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_CYCCNT__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_DIR_WD__A, 0, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_DIR_STP__A, 1, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  p_agc_if_settings = &(ext_attr->qam_if_agc_cfg);
  p_agc_rf_settings = &(ext_attr->qam_rf_agc_cfg);
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_INGAIN_TGT__A, p_agc_if_settings->top, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }

  rc = drxj_dap_read_reg16(dev_addr, SCU_RAM_AGC_KI__A, &agc_ki, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  agc_ki &= 0xf000;
  rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI__A, agc_ki, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  break;

 default:
  return -EINVAL;
 }


 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_INGAIN_TGT_MIN__A, p_agc_if_settings->top, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_INGAIN__A, p_agc_if_settings->top, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_INGAIN_TGT_MAX__A, ingain_tgt_max, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_IF_IACCU_HI_TGT_MIN__A, if_iaccu_hi_tgt_min, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_IF_IACCU_HI__A, 0, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_IF_IACCU_LO__A, 0, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_RF_IACCU_HI__A, 0, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_RF_IACCU_LO__A, 0, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_RF_MAX__A, 32767, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_SUM_MAX__A, clp_sum_max, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_SUM_MAX__A, sns_sum_max, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI_INNERGAIN_MIN__A, ki_innergain_min, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_FAST_SNS_CTRL_DELAY__A, 50, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI_CYCLEN__A, 500, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_CYCLEN__A, 500, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI_MAXMINGAIN_TH__A, 20, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI_MIN__A, ki_min, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI_MAX__A, ki_max, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI_RED__A, 0, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_SUM_MIN__A, 8, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_CYCLEN__A, 500, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_DIR_TO__A, clp_dir_to, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_SUM_MIN__A, 8, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_SNS_DIR_TO__A, sns_dir_to, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_FAST_CLP_CTRL_DELAY__A, 50, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_CLP_CTRL_MODE__A, clp_ctrl_mode, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 agc_rf = 0x800 + p_agc_rf_settings->cut_off_current;
 if (common_attr->tuner_rf_agc_pol == 1)
  agc_rf = 0x87ff - agc_rf;

 agc_if = 0x800;
 if (common_attr->tuner_if_agc_pol == 1)
  agc_rf = 0x87ff - agc_rf;

 rc = drxj_dap_write_reg16(dev_addr, IQM_AF_AGC_RF__A, agc_rf, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, IQM_AF_AGC_IF__A, agc_if, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 rc = drxj_dap_read_reg16(dev_addr, SCU_RAM_AGC_KI__A, &data, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 data &= ~SCU_RAM_AGC_KI_DGAIN__M;
 data |= (agc_ki_dgain << SCU_RAM_AGC_KI_DGAIN__B);
 rc = drxj_dap_write_reg16(dev_addr, SCU_RAM_AGC_KI__A, data, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 return 0;
rw_error:
 return rc;
}
