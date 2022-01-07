
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct dvb_frontend {struct cxd2880_priv* demodulator_priv; } ;
struct TYPE_8__ {int len; TYPE_1__* stat; } ;
struct TYPE_7__ {int len; TYPE_2__* stat; } ;
struct dtv_frontend_properties {TYPE_4__ cnr; TYPE_3__ strength; void* inversion; void* modulation; void* fec_inner; void* guard_interval; void* transmission_mode; } ;
struct cxd2880_priv {int spi_mutex; int tnrdmd; } ;
struct cxd2880_dvbt2_l1pre {int fft_mode; int gi; } ;
typedef enum cxd2880_tnrdmd_spectrum_sense { ____Placeholder_cxd2880_tnrdmd_spectrum_sense } cxd2880_tnrdmd_spectrum_sense ;
typedef enum cxd2880_dvbt2_plp_constell { ____Placeholder_cxd2880_dvbt2_plp_constell } cxd2880_dvbt2_plp_constell ;
typedef enum cxd2880_dvbt2_plp_code_rate { ____Placeholder_cxd2880_dvbt2_plp_code_rate } cxd2880_dvbt2_plp_code_rate ;
struct TYPE_6__ {int svalue; void* scale; } ;
struct TYPE_5__ {void* scale; int svalue; } ;
 int CXD2880_DVBT2_PLP_DATA ;
 int EINVAL ;
 void* FEC_1_2 ;
 void* FEC_2_3 ;
 void* FEC_3_4 ;
 void* FEC_3_5 ;
 void* FEC_4_5 ;
 void* FEC_5_6 ;
 void* FEC_NONE ;
 void* FE_SCALE_DECIBEL ;
 void* FE_SCALE_NOT_AVAILABLE ;
 void* GUARD_INTERVAL_19_128 ;
 void* GUARD_INTERVAL_19_256 ;
 void* GUARD_INTERVAL_1_128 ;
 void* GUARD_INTERVAL_1_16 ;
 void* GUARD_INTERVAL_1_32 ;
 void* GUARD_INTERVAL_1_4 ;
 void* GUARD_INTERVAL_1_8 ;
 void* INVERSION_OFF ;
 void* INVERSION_ON ;
 void* QAM_16 ;
 void* QAM_256 ;
 void* QAM_64 ;
 void* QPSK ;
 void* TRANSMISSION_MODE_16K ;
 void* TRANSMISSION_MODE_1K ;
 void* TRANSMISSION_MODE_2K ;
 void* TRANSMISSION_MODE_32K ;
 void* TRANSMISSION_MODE_4K ;
 void* TRANSMISSION_MODE_8K ;
 int cxd2880_read_snr (struct dvb_frontend*,int *) ;
 int cxd2880_tnrdmd_dvbt2_mon_code_rate (int *,int ,int*) ;
 int cxd2880_tnrdmd_dvbt2_mon_l1_pre (int *,struct cxd2880_dvbt2_l1pre*) ;
 int cxd2880_tnrdmd_dvbt2_mon_qam (int *,int ,int*) ;
 int cxd2880_tnrdmd_dvbt2_mon_spectrum_sense (int *,int*) ;
 int cxd2880_tnrdmd_mon_rf_lvl (int *,int*) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int pr_debug (char*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int cxd2880_get_frontend_t2(struct dvb_frontend *fe,
       struct dtv_frontend_properties *c)
{
 int ret;
 struct cxd2880_priv *priv = ((void*)0);
 struct cxd2880_dvbt2_l1pre l1pre;
 enum cxd2880_dvbt2_plp_code_rate coderate;
 enum cxd2880_dvbt2_plp_constell qam;
 enum cxd2880_tnrdmd_spectrum_sense sense;
 u16 snr = 0;
 int strength = 0;

 if (!fe || !c) {
  pr_err("invalid arg.\n");
  return -EINVAL;
 }

 priv = fe->demodulator_priv;

 mutex_lock(priv->spi_mutex);
 ret = cxd2880_tnrdmd_dvbt2_mon_l1_pre(&priv->tnrdmd, &l1pre);
 mutex_unlock(priv->spi_mutex);
 if (!ret) {
  switch (l1pre.fft_mode) {
  case 143:
   c->transmission_mode = TRANSMISSION_MODE_2K;
   break;
  case 140:
   c->transmission_mode = TRANSMISSION_MODE_8K;
   break;
  case 141:
   c->transmission_mode = TRANSMISSION_MODE_4K;
   break;
  case 144:
   c->transmission_mode = TRANSMISSION_MODE_1K;
   break;
  case 145:
   c->transmission_mode = TRANSMISSION_MODE_16K;
   break;
  case 142:
   c->transmission_mode = TRANSMISSION_MODE_32K;
   break;
  default:
   c->transmission_mode = TRANSMISSION_MODE_2K;
   pr_debug("L1Pre fft_mode is invalid %d\n",
     l1pre.fft_mode);
   break;
  }
  switch (l1pre.gi) {
  case 148:
   c->guard_interval = GUARD_INTERVAL_1_32;
   break;
  case 149:
   c->guard_interval = GUARD_INTERVAL_1_16;
   break;
  case 146:
   c->guard_interval = GUARD_INTERVAL_1_8;
   break;
  case 147:
   c->guard_interval = GUARD_INTERVAL_1_4;
   break;
  case 150:
   c->guard_interval = GUARD_INTERVAL_1_128;
   break;
  case 152:
   c->guard_interval = GUARD_INTERVAL_19_128;
   break;
  case 151:
   c->guard_interval = GUARD_INTERVAL_19_256;
   break;
  default:
   c->guard_interval = GUARD_INTERVAL_1_32;
   pr_debug("L1Pre guard interval is invalid %d\n",
     l1pre.gi);
   break;
  }
 } else {
  c->transmission_mode = TRANSMISSION_MODE_2K;
  c->guard_interval = GUARD_INTERVAL_1_32;
  pr_debug("L1Pre err %d\n", ret);
 }

 mutex_lock(priv->spi_mutex);
 ret = cxd2880_tnrdmd_dvbt2_mon_code_rate(&priv->tnrdmd,
       CXD2880_DVBT2_PLP_DATA,
       &coderate);
 mutex_unlock(priv->spi_mutex);
 if (!ret) {
  switch (coderate) {
  case 135:
   c->fec_inner = FEC_1_2;
   break;
  case 132:
   c->fec_inner = FEC_3_5;
   break;
  case 134:
   c->fec_inner = FEC_2_3;
   break;
  case 133:
   c->fec_inner = FEC_3_4;
   break;
  case 131:
   c->fec_inner = FEC_4_5;
   break;
  case 130:
   c->fec_inner = FEC_5_6;
   break;
  default:
   c->fec_inner = FEC_NONE;
   pr_debug("CodeRate is invalid %d\n", coderate);
   break;
  }
 } else {
  c->fec_inner = FEC_NONE;
  pr_debug("CodeRate %d\n", ret);
 }

 mutex_lock(priv->spi_mutex);
 ret = cxd2880_tnrdmd_dvbt2_mon_qam(&priv->tnrdmd,
        CXD2880_DVBT2_PLP_DATA,
        &qam);
 mutex_unlock(priv->spi_mutex);
 if (!ret) {
  switch (qam) {
  case 136:
   c->modulation = QPSK;
   break;
  case 139:
   c->modulation = QAM_16;
   break;
  case 137:
   c->modulation = QAM_64;
   break;
  case 138:
   c->modulation = QAM_256;
   break;
  default:
   c->modulation = QPSK;
   pr_debug("QAM is invalid %d\n", qam);
   break;
  }
 } else {
  c->modulation = QPSK;
  pr_debug("QAM %d\n", ret);
 }

 mutex_lock(priv->spi_mutex);
 ret = cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(&priv->tnrdmd, &sense);
 mutex_unlock(priv->spi_mutex);
 if (!ret) {
  switch (sense) {
  case 128:
   c->inversion = INVERSION_OFF;
   break;
  case 129:
   c->inversion = INVERSION_ON;
   break;
  default:
   c->inversion = INVERSION_OFF;
   pr_debug("spectrum sense is invalid %d\n", sense);
   break;
  }
 } else {
  c->inversion = INVERSION_OFF;
  pr_debug("SpectrumSense %d\n", ret);
 }

 mutex_lock(priv->spi_mutex);
 ret = cxd2880_tnrdmd_mon_rf_lvl(&priv->tnrdmd, &strength);
 mutex_unlock(priv->spi_mutex);
 if (!ret) {
  c->strength.len = 1;
  c->strength.stat[0].scale = FE_SCALE_DECIBEL;
  c->strength.stat[0].svalue = strength;
 } else {
  c->strength.len = 1;
  c->strength.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  pr_debug("mon_rf_lvl %d\n", ret);
 }

 ret = cxd2880_read_snr(fe, &snr);
 if (!ret) {
  c->cnr.len = 1;
  c->cnr.stat[0].scale = FE_SCALE_DECIBEL;
  c->cnr.stat[0].svalue = snr;
 } else {
  c->cnr.len = 1;
  c->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  pr_debug("read_snr %d\n", ret);
 }

 return 0;
}
