
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct i2c_device_addr {struct drx39xxj_state* user_data; } ;
struct TYPE_19__ {TYPE_11__* stat; } ;
struct TYPE_17__ {TYPE_9__* stat; } ;
struct TYPE_31__ {TYPE_7__* stat; } ;
struct TYPE_29__ {TYPE_5__* stat; } ;
struct TYPE_27__ {TYPE_3__* stat; } ;
struct TYPE_25__ {TYPE_1__* stat; } ;
struct TYPE_22__ {TYPE_14__* stat; } ;
struct dtv_frontend_properties {TYPE_12__ cnr; TYPE_10__ block_error; TYPE_8__ post_bit_error; TYPE_6__ pre_bit_error; TYPE_4__ post_bit_count; TYPE_2__ pre_bit_count; TYPE_15__ block_count; } ;
struct drxjrs_errors {scalar_t__ nr_snc_par_fail_count; scalar_t__ nr_bit_errors; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct drxj_data {int constellation; scalar_t__ fec_rs_period; scalar_t__ fec_rs_prescale; scalar_t__ fec_rs_plen; scalar_t__ qam_vd_period; scalar_t__ qam_vd_prescale; scalar_t__ fec_vd_plen; scalar_t__ standard; } ;
struct drx_demod_instance {struct drxj_data* my_ext_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;
struct TYPE_20__ {struct dtv_frontend_properties dtv_property_cache; } ;
struct drx39xxj_state {TYPE_13__ frontend; } ;
typedef enum drx_modulation { ____Placeholder_drx_modulation } drx_modulation ;
struct TYPE_32__ {void* scale; int uvalue; } ;
struct TYPE_30__ {int uvalue; void* scale; } ;
struct TYPE_28__ {int uvalue; void* scale; } ;
struct TYPE_26__ {int uvalue; void* scale; } ;
struct TYPE_24__ {int uvalue; void* scale; } ;
struct TYPE_23__ {int packet_error; } ;
struct TYPE_21__ {void* scale; } ;
struct TYPE_18__ {void* scale; scalar_t__ svalue; } ;


 int DRXJ_QAM_SL_SIG_POWER_QAM128 ;
 int DRXJ_QAM_SL_SIG_POWER_QAM16 ;
 int DRXJ_QAM_SL_SIG_POWER_QAM256 ;
 int DRXJ_QAM_SL_SIG_POWER_QAM32 ;
 int DRXJ_QAM_SL_SIG_POWER_QAM64 ;





 scalar_t__ DRX_STANDARD_ITU_B ;
 int EIO ;
 int FEC_OC_SNC_FAIL_PERIOD__A ;
 int FEC_RS_NR_BIT_ERRORS_EXP__B ;
 int FEC_RS_NR_BIT_ERRORS_EXP__M ;
 int FEC_RS_NR_BIT_ERRORS_FIXED_MANT__B ;
 int FEC_RS_NR_BIT_ERRORS_FIXED_MANT__M ;
 void* FE_SCALE_COUNTER ;
 void* FE_SCALE_DECIBEL ;
 void* FE_SCALE_NOT_AVAILABLE ;
 int QAM_SL_ERR_POWER__A ;
 scalar_t__ QAM_VD_NR_QSYM_ERRORS_EXP__B ;
 scalar_t__ QAM_VD_NR_QSYM_ERRORS_EXP__M ;
 int QAM_VD_NR_QSYM_ERRORS__A ;
 scalar_t__ QAM_VD_NR_SYMBOL_ERRORS_FIXED_MANT__B ;
 scalar_t__ QAM_VD_NR_SYMBOL_ERRORS_FIXED_MANT__M ;
 int drxj_dap_read_reg16 (struct i2c_device_addr*,int ,scalar_t__*,int ) ;
 int get_acc_pkt_err (struct drx_demod_instance*,int *) ;
 int get_qamrs_err_count (struct i2c_device_addr*,struct drxjrs_errors*) ;
 int log1_times100 (int) ;
 int pr_err (char*,int) ;
 TYPE_16__* sig_quality ;

__attribute__((used)) static int
ctrl_get_qam_sig_quality(struct drx_demod_instance *demod)
{
 struct i2c_device_addr *dev_addr = demod->my_i2c_dev_addr;
 struct drxj_data *ext_attr = demod->my_ext_attr;
 struct drx39xxj_state *state = dev_addr->user_data;
 struct dtv_frontend_properties *p = &state->frontend.dtv_property_cache;
 struct drxjrs_errors measuredrs_errors = { 0, 0, 0, 0, 0 };
 enum drx_modulation constellation = ext_attr->constellation;
 int rc;

 u32 pre_bit_err_rs = 0;
 u32 post_bit_err_rs = 0;
 u32 pkt_errs = 0;
 u16 qam_sl_err_power = 0;
 u16 qsym_err_vd = 0;
 u16 fec_oc_period = 0;
 u16 fec_rs_prescale = 0;
 u16 fec_rs_period = 0;

 u32 rs_bit_cnt = 0;
 u32 qam_sl_sig_power = 0;

 u32 e = 0;
 u32 m = 0;
 u32 ber_cnt = 0;

 u32 qam_sl_mer = 0;
 u32 qam_pre_rs_ber = 0;
 u32 qam_post_rs_ber = 0;
 u32 qam_vd_ser = 0;
 u16 qam_vd_prescale = 0;
 u16 qam_vd_period = 0;
 u32 vd_bit_cnt = 0;

 p->block_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;



 rc = get_qamrs_err_count(dev_addr, &measuredrs_errors);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 rc = drxj_dap_read_reg16(dev_addr, QAM_SL_ERR_POWER__A, &qam_sl_err_power, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 rc = drxj_dap_read_reg16(dev_addr, FEC_OC_SNC_FAIL_PERIOD__A, &fec_oc_period, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 fec_rs_period = ext_attr->fec_rs_period;
 fec_rs_prescale = ext_attr->fec_rs_prescale;
 rs_bit_cnt = fec_rs_period * fec_rs_prescale * ext_attr->fec_rs_plen;
 qam_vd_period = ext_attr->qam_vd_period;
 qam_vd_prescale = ext_attr->qam_vd_prescale;
 vd_bit_cnt = qam_vd_period * qam_vd_prescale * ext_attr->fec_vd_plen;


 switch (constellation) {
 case 131:
  qam_sl_sig_power = DRXJ_QAM_SL_SIG_POWER_QAM16 << 2;
  break;
 case 129:
  qam_sl_sig_power = DRXJ_QAM_SL_SIG_POWER_QAM32 << 2;
  break;
 case 128:
  qam_sl_sig_power = DRXJ_QAM_SL_SIG_POWER_QAM64 << 2;
  break;
 case 132:
  qam_sl_sig_power = DRXJ_QAM_SL_SIG_POWER_QAM128 << 2;
  break;
 case 130:
  qam_sl_sig_power = DRXJ_QAM_SL_SIG_POWER_QAM256 << 2;
  break;
 default:
  return -EIO;
 }







 if (qam_sl_err_power == 0)
  qam_sl_mer = 0;
 else
  qam_sl_mer = log1_times100(qam_sl_sig_power) - log1_times100((u32)qam_sl_err_power);
 rc = drxj_dap_read_reg16(dev_addr, QAM_VD_NR_QSYM_ERRORS__A, &qsym_err_vd, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }


 e = (qsym_err_vd & QAM_VD_NR_QSYM_ERRORS_EXP__M) >>
     QAM_VD_NR_QSYM_ERRORS_EXP__B;
 m = (qsym_err_vd & QAM_VD_NR_SYMBOL_ERRORS_FIXED_MANT__M) >>
     QAM_VD_NR_SYMBOL_ERRORS_FIXED_MANT__B;

 if ((m << e) >> 3 > 549752)
  qam_vd_ser = 500000 * vd_bit_cnt * ((e > 2) ? 1 : 8) / 8;
 else
  qam_vd_ser = m << ((e > 2) ? (e - 3) : e);







 pre_bit_err_rs = (u32) measuredrs_errors.nr_bit_errors;
 pkt_errs = post_bit_err_rs = (u32) measuredrs_errors.nr_snc_par_fail_count;



 e = (pre_bit_err_rs & FEC_RS_NR_BIT_ERRORS_EXP__M) >>
     FEC_RS_NR_BIT_ERRORS_EXP__B;
 m = (pre_bit_err_rs & FEC_RS_NR_BIT_ERRORS_FIXED_MANT__M) >>
     FEC_RS_NR_BIT_ERRORS_FIXED_MANT__B;

 ber_cnt = m << e;


 if (m > (rs_bit_cnt >> (e + 1)) || (rs_bit_cnt >> e) == 0)
  qam_pre_rs_ber = 500000 * rs_bit_cnt >> e;
 else
  qam_pre_rs_ber = ber_cnt;
 if (!fec_oc_period) {
  qam_post_rs_ber = 0xFFFFFFFF;
 } else {
  e = post_bit_err_rs * 742686;
  m = fec_oc_period * 100;
  qam_post_rs_ber = e / m;
 }


 p->pre_bit_count.stat[0].scale = FE_SCALE_COUNTER;
 p->post_bit_count.stat[0].scale = FE_SCALE_COUNTER;
 p->pre_bit_error.stat[0].scale = FE_SCALE_COUNTER;
 p->post_bit_error.stat[0].scale = FE_SCALE_COUNTER;
 p->block_error.stat[0].scale = FE_SCALE_COUNTER;
 p->cnr.stat[0].scale = FE_SCALE_DECIBEL;

 p->cnr.stat[0].svalue = ((u16) qam_sl_mer) * 100;
 if (ext_attr->standard == DRX_STANDARD_ITU_B) {
  p->pre_bit_error.stat[0].uvalue += qam_vd_ser;
  p->pre_bit_count.stat[0].uvalue += vd_bit_cnt * ((e > 2) ? 1 : 8) / 8;
 } else {
  p->pre_bit_error.stat[0].uvalue += qam_pre_rs_ber;
  p->pre_bit_count.stat[0].uvalue += rs_bit_cnt >> e;
 }

 p->post_bit_error.stat[0].uvalue += qam_post_rs_ber;
 p->post_bit_count.stat[0].uvalue += rs_bit_cnt >> e;

 p->block_error.stat[0].uvalue += pkt_errs;
 return 0;
rw_error:
 p->pre_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->post_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->pre_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->post_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->block_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;

 return rc;
}
