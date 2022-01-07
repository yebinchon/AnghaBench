
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dtv_frontend_properties {int code_rate_LP; int code_rate_HP; int transmission_mode; int guard_interval; void* hierarchy; int modulation; int inversion; } ;
struct dib3000_state {int dummy; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;


 int DIB3000MB_REG_DDS_FREQ_LSB ;
 int DIB3000MB_REG_DDS_FREQ_MSB ;
 int DIB3000MB_REG_DDS_VALUE_LSB ;
 int DIB3000MB_REG_DDS_VALUE_MSB ;
 int DIB3000MB_REG_TPS_CODE_RATE_HP ;
 int DIB3000MB_REG_TPS_CODE_RATE_LP ;
 int DIB3000MB_REG_TPS_FFT ;
 int DIB3000MB_REG_TPS_GUARD_TIME ;
 int DIB3000MB_REG_TPS_HRCH ;
 int DIB3000MB_REG_TPS_LOCK ;
 int DIB3000MB_REG_TPS_QAM ;
 int DIB3000MB_REG_TPS_VIT_ALPHA ;
 int FEC_1_2 ;
 int FEC_2_3 ;
 int FEC_3_4 ;
 int FEC_4_5 ;
 int FEC_7_8 ;
 void* FEC_NONE ;
 int GUARD_INTERVAL_1_16 ;
 int GUARD_INTERVAL_1_32 ;
 int GUARD_INTERVAL_1_4 ;
 int GUARD_INTERVAL_1_8 ;
 void* HIERARCHY_1 ;
 void* HIERARCHY_2 ;
 void* HIERARCHY_4 ;
 void* HIERARCHY_NONE ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 int QAM_16 ;
 int QAM_64 ;
 int QPSK ;
 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_8K ;
 int deb_getf (char*,...) ;
 int pr_err (char*,int) ;
 int rd (int ) ;

__attribute__((used)) static int dib3000mb_get_frontend(struct dvb_frontend* fe,
      struct dtv_frontend_properties *c)
{
 struct dib3000_state* state = fe->demodulator_priv;
 enum fe_code_rate *cr;
 u16 tps_val;
 int inv_test1,inv_test2;
 u32 dds_val, threshold = 0x800000;

 if (!rd(DIB3000MB_REG_TPS_LOCK))
  return 0;

 dds_val = ((rd(DIB3000MB_REG_DDS_VALUE_MSB) & 0xff) << 16) + rd(DIB3000MB_REG_DDS_VALUE_LSB);
 deb_getf("DDS_VAL: %x %x %x\n", dds_val, rd(DIB3000MB_REG_DDS_VALUE_MSB), rd(DIB3000MB_REG_DDS_VALUE_LSB));
 if (dds_val < threshold)
  inv_test1 = 0;
 else if (dds_val == threshold)
  inv_test1 = 1;
 else
  inv_test1 = 2;

 dds_val = ((rd(DIB3000MB_REG_DDS_FREQ_MSB) & 0xff) << 16) + rd(DIB3000MB_REG_DDS_FREQ_LSB);
 deb_getf("DDS_FREQ: %x %x %x\n", dds_val, rd(DIB3000MB_REG_DDS_FREQ_MSB), rd(DIB3000MB_REG_DDS_FREQ_LSB));
 if (dds_val < threshold)
  inv_test2 = 0;
 else if (dds_val == threshold)
  inv_test2 = 1;
 else
  inv_test2 = 2;

 c->inversion =
  ((inv_test2 == 2) && (inv_test1==1 || inv_test1==0)) ||
  ((inv_test2 == 0) && (inv_test1==1 || inv_test1==2)) ?
  INVERSION_ON : INVERSION_OFF;

 deb_getf("inversion %d %d, %d\n", inv_test2, inv_test1, c->inversion);

 switch ((tps_val = rd(DIB3000MB_REG_TPS_QAM))) {
  case 139:
   deb_getf("QPSK\n");
   c->modulation = QPSK;
   break;
  case 141:
   deb_getf("QAM16\n");
   c->modulation = QAM_16;
   break;
  case 140:
   deb_getf("QAM64\n");
   c->modulation = QAM_64;
   break;
  default:
   pr_err("Unexpected constellation returned by TPS (%d)\n", tps_val);
   break;
 }
 deb_getf("TPS: %d\n", tps_val);

 if (rd(DIB3000MB_REG_TPS_HRCH)) {
  deb_getf("HRCH ON\n");
  cr = &c->code_rate_LP;
  c->code_rate_HP = FEC_NONE;
  switch ((tps_val = rd(DIB3000MB_REG_TPS_VIT_ALPHA))) {
   case 145:
    deb_getf("HIERARCHY_NONE\n");
    c->hierarchy = HIERARCHY_NONE;
    break;
   case 144:
    deb_getf("HIERARCHY_1\n");
    c->hierarchy = HIERARCHY_1;
    break;
   case 143:
    deb_getf("HIERARCHY_2\n");
    c->hierarchy = HIERARCHY_2;
    break;
   case 142:
    deb_getf("HIERARCHY_4\n");
    c->hierarchy = HIERARCHY_4;
    break;
   default:
    pr_err("Unexpected ALPHA value returned by TPS (%d)\n", tps_val);
    break;
  }
  deb_getf("TPS: %d\n", tps_val);

  tps_val = rd(DIB3000MB_REG_TPS_CODE_RATE_LP);
 } else {
  deb_getf("HRCH OFF\n");
  cr = &c->code_rate_HP;
  c->code_rate_LP = FEC_NONE;
  c->hierarchy = HIERARCHY_NONE;

  tps_val = rd(DIB3000MB_REG_TPS_CODE_RATE_HP);
 }

 switch (tps_val) {
  case 138:
   deb_getf("FEC_1_2\n");
   *cr = FEC_1_2;
   break;
  case 137:
   deb_getf("FEC_2_3\n");
   *cr = FEC_2_3;
   break;
  case 136:
   deb_getf("FEC_3_4\n");
   *cr = FEC_3_4;
   break;
  case 135:
   deb_getf("FEC_5_6\n");
   *cr = FEC_4_5;
   break;
  case 134:
   deb_getf("FEC_7_8\n");
   *cr = FEC_7_8;
   break;
  default:
   pr_err("Unexpected FEC returned by TPS (%d)\n", tps_val);
   break;
 }
 deb_getf("TPS: %d\n",tps_val);

 switch ((tps_val = rd(DIB3000MB_REG_TPS_GUARD_TIME))) {
  case 132:
   deb_getf("GUARD_INTERVAL_1_32\n");
   c->guard_interval = GUARD_INTERVAL_1_32;
   break;
  case 133:
   deb_getf("GUARD_INTERVAL_1_16\n");
   c->guard_interval = GUARD_INTERVAL_1_16;
   break;
  case 130:
   deb_getf("GUARD_INTERVAL_1_8\n");
   c->guard_interval = GUARD_INTERVAL_1_8;
   break;
  case 131:
   deb_getf("GUARD_INTERVAL_1_4\n");
   c->guard_interval = GUARD_INTERVAL_1_4;
   break;
  default:
   pr_err("Unexpected Guard Time returned by TPS (%d)\n", tps_val);
   break;
 }
 deb_getf("TPS: %d\n", tps_val);

 switch ((tps_val = rd(DIB3000MB_REG_TPS_FFT))) {
  case 129:
   deb_getf("TRANSMISSION_MODE_2K\n");
   c->transmission_mode = TRANSMISSION_MODE_2K;
   break;
  case 128:
   deb_getf("TRANSMISSION_MODE_8K\n");
   c->transmission_mode = TRANSMISSION_MODE_8K;
   break;
  default:
   pr_err("unexpected transmission mode return by TPS (%d)\n", tps_val);
   break;
 }
 deb_getf("TPS: %d\n", tps_val);

 return 0;
}
