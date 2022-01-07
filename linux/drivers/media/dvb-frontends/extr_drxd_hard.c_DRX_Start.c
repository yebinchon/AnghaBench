
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dtv_frontend_properties {scalar_t__ inversion; int transmission_mode; int guard_interval; int hierarchy; int modulation; int code_rate_HP; int bandwidth_hz; } ;
struct drxd_state {scalar_t__ drxd_state; scalar_t__ cscd_state; int sys_clock_freq; scalar_t__ operation_mode; int noise_cal; scalar_t__ type_A; struct dtv_frontend_properties props; int rf_agc_cfg; int if_agc_cfg; } ;
typedef int s32 ;


 scalar_t__ CSCD_INIT ;
 scalar_t__ CSCD_SET ;
 int DRXD_BANDWIDTH_6MHZ_IN_HZ ;
 int DRXD_BANDWIDTH_7MHZ_IN_HZ ;
 int DRXD_BANDWIDTH_8MHZ_IN_HZ ;
 int DRXD_OSCDEV_DO_SCAN ;
 scalar_t__ DRXD_STARTED ;
 scalar_t__ DRXD_STOPPED ;



 int EC_SB_REG_ALPHA__A ;
 int EC_SB_REG_CONST_16QAM ;
 int EC_SB_REG_CONST_64QAM ;
 int EC_SB_REG_CONST_QPSK ;
 int EC_SB_REG_CONST__A ;
 int EC_SB_REG_PRIOR_HI ;
 int EC_SB_REG_PRIOR_LO ;
 int EC_SB_REG_PRIOR__A ;
 int EC_SB_REG_SCALE_BIT2__A ;
 int EC_SB_REG_SCALE_LSB__A ;
 int EC_SB_REG_SCALE_MSB__A ;
 int EC_SB_REG_TR_MODE_2K ;
 int EC_SB_REG_TR_MODE_8K ;
 int EC_SB_REG_TR_MODE__A ;
 int EC_VD_REG_SET_CODERATE_C1_2 ;
 int EC_VD_REG_SET_CODERATE_C2_3 ;
 int EC_VD_REG_SET_CODERATE_C3_4 ;
 int EC_VD_REG_SET_CODERATE_C5_6 ;
 int EC_VD_REG_SET_CODERATE_C7_8 ;
 int EC_VD_REG_SET_CODERATE__A ;
 int EINVAL ;
 int EQ_REG_IS_GAIN_EXP__A ;
 int EQ_REG_IS_GAIN_MAN__A ;
 int EQ_REG_OT_ALPHA__A ;
 int EQ_REG_OT_CONST__A ;
 int EQ_REG_SN_CEGAIN__A ;
 int EQ_REG_TD_TPS_PWR_OFS__A ;
 int EQ_TD_TPS_PWR_QAM16_ALPHA1 ;
 int EQ_TD_TPS_PWR_QAM16_ALPHA2 ;
 int EQ_TD_TPS_PWR_QAM16_ALPHA4 ;
 int EQ_TD_TPS_PWR_QAM16_ALPHAN ;
 int EQ_TD_TPS_PWR_QAM64_ALPHA1 ;
 int EQ_TD_TPS_PWR_QAM64_ALPHA2 ;
 int EQ_TD_TPS_PWR_QAM64_ALPHA4 ;
 int EQ_TD_TPS_PWR_QAM64_ALPHAN ;
 int EQ_TD_TPS_PWR_QPSK ;
 int EQ_TD_TPS_PWR_UNKNOWN ;





 int FE_AG_REG_IND_DEL__A ;
 int FE_IF_REG_INCR0__A ;
 int FE_IF_REG_INCR0__M ;
 int FE_IF_REG_INCR0__W ;
 int FE_IF_REG_INCR1__A ;
 int FE_IF_REG_INCR1__M ;
 scalar_t__ INVERSION_ON ;
 int InitCE (struct drxd_state*) ;
 int InitCP (struct drxd_state*) ;
 int InitEQ (struct drxd_state*) ;
 int InitFT (struct drxd_state*) ;
 int InitSC (struct drxd_state*) ;
 int MulDiv32 (int,unsigned long long,int) ;
 scalar_t__ OM_Default ;



 int Read16 (struct drxd_state*,int ,int*,int ) ;
 int ResetECOD (struct drxd_state*) ;
 int SC_COMM_EXEC__A ;
 int SC_COMM_STATE__A ;
 int SC_ProcStartCommand (struct drxd_state*,int ,int ,int ) ;
 int SC_RA_RAM_BAND__A ;
 int SC_RA_RAM_CONFIG_SLAVE__M ;
 int SC_RA_RAM_CONFIG__A ;
 int SC_RA_RAM_EQ_IS_GAIN_16QAM_A2_EXP__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_16QAM_A2_MAN__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_16QAM_A4_EXP__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_16QAM_A4_MAN__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_16QAM_EXP__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_16QAM_MAN__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_64QAM_A2_EXP__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_64QAM_A2_MAN__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_64QAM_A4_EXP__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_64QAM_A4_MAN__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_64QAM_EXP__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_64QAM_MAN__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_QPSK_EXP__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_QPSK_MAN__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_EXP__PRE ;
 int SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_MAN__PRE ;
 int SC_RA_RAM_LOCKTRACK_MIN ;
 int SC_RA_RAM_OP_AUTO_CONST__M ;
 int SC_RA_RAM_OP_AUTO_GUARD__M ;
 int SC_RA_RAM_OP_AUTO_HIER__M ;
 int SC_RA_RAM_OP_AUTO_MODE__M ;
 int SC_RA_RAM_OP_AUTO_RATE__M ;
 int SC_RA_RAM_OP_PARAM_CONST_QAM16 ;
 int SC_RA_RAM_OP_PARAM_CONST_QAM64 ;
 int SC_RA_RAM_OP_PARAM_CONST_QPSK ;
 int SC_RA_RAM_OP_PARAM_GUARD_16 ;
 int SC_RA_RAM_OP_PARAM_GUARD_32 ;
 int SC_RA_RAM_OP_PARAM_GUARD_4 ;
 int SC_RA_RAM_OP_PARAM_GUARD_8 ;
 int SC_RA_RAM_OP_PARAM_HIER_A1 ;
 int SC_RA_RAM_OP_PARAM_HIER_A2 ;
 int SC_RA_RAM_OP_PARAM_HIER_A4 ;
 int SC_RA_RAM_OP_PARAM_HIER_NO ;
 int SC_RA_RAM_OP_PARAM_MODE_2K ;
 int SC_RA_RAM_OP_PARAM_MODE_8K ;
 int SC_RA_RAM_OP_PARAM_PRIO_HI ;
 int SC_RA_RAM_OP_PARAM_PRIO_LO ;
 int SC_RA_RAM_OP_PARAM_RATE_1_2 ;
 int SC_RA_RAM_OP_PARAM_RATE_2_3 ;
 int SC_RA_RAM_OP_PARAM_RATE_3_4 ;
 int SC_RA_RAM_OP_PARAM_RATE_5_6 ;
 int SC_RA_RAM_OP_PARAM_RATE_7_8 ;
 int SC_RA_RAM_PROC_LOCKTRACK ;
 int SC_RA_RAM_SAMPLE_RATE_COUNT__A ;
 int SC_RA_RAM_SW_EVENT_RUN_NMASK__M ;
 int SC_SetPrefParamCommand (struct drxd_state*,int,int,int) ;
 int SetCfgIfAgc (struct drxd_state*,int *) ;
 int SetCfgNoiseCalibration (struct drxd_state*,int *) ;
 int SetCfgRfAgc (struct drxd_state*,int *) ;
 int SetFrequencyShift (struct drxd_state*,int,int) ;
 int StartDiversity (struct drxd_state*) ;
 int StartOC (struct drxd_state*) ;


 int Write16 (struct drxd_state*,int ,int,int) ;

__attribute__((used)) static int DRX_Start(struct drxd_state *state, s32 off)
{
 struct dtv_frontend_properties *p = &state->props;
 int status;

 u16 transmissionParams = 0;
 u16 operationMode = 0;
 u16 qpskTdTpsPwr = 0;
 u16 qam16TdTpsPwr = 0;
 u16 qam64TdTpsPwr = 0;
 u32 feIfIncr = 0;
 u32 bandwidth = 0;
 int mirrorFreqSpect;

 u16 qpskSnCeGain = 0;
 u16 qam16SnCeGain = 0;
 u16 qam64SnCeGain = 0;
 u16 qpskIsGainMan = 0;
 u16 qam16IsGainMan = 0;
 u16 qam64IsGainMan = 0;
 u16 qpskIsGainExp = 0;
 u16 qam16IsGainExp = 0;
 u16 qam64IsGainExp = 0;
 u16 bandwidthParam = 0;

 if (off < 0)
  off = (off - 500) / 1000;
 else
  off = (off + 500) / 1000;

 do {
  if (state->drxd_state != DRXD_STOPPED)
   return -1;
  status = ResetECOD(state);
  if (status < 0)
   break;
  if (state->type_A) {
   status = InitSC(state);
   if (status < 0)
    break;
  } else {
   status = InitFT(state);
   if (status < 0)
    break;
   status = InitCP(state);
   if (status < 0)
    break;
   status = InitCE(state);
   if (status < 0)
    break;
   status = InitEQ(state);
   if (status < 0)
    break;
   status = InitSC(state);
   if (status < 0)
    break;
  }



  status = SetCfgIfAgc(state, &state->if_agc_cfg);
  if (status < 0)
   break;
  status = SetCfgRfAgc(state, &state->rf_agc_cfg);
  if (status < 0)
   break;

  mirrorFreqSpect = (state->props.inversion == INVERSION_ON);

  switch (p->transmission_mode) {
  default:
   operationMode |= SC_RA_RAM_OP_AUTO_MODE__M;

  case 128:
   transmissionParams |= SC_RA_RAM_OP_PARAM_MODE_8K;
   if (state->type_A) {
    status = Write16(state, EC_SB_REG_TR_MODE__A, EC_SB_REG_TR_MODE_8K, 0x0000);
    if (status < 0)
     break;
    qpskSnCeGain = 99;
    qam16SnCeGain = 83;
    qam64SnCeGain = 67;
   }
   break;
  case 129:
   transmissionParams |= SC_RA_RAM_OP_PARAM_MODE_2K;
   if (state->type_A) {
    status = Write16(state, EC_SB_REG_TR_MODE__A, EC_SB_REG_TR_MODE_2K, 0x0000);
    if (status < 0)
     break;
    qpskSnCeGain = 97;
    qam16SnCeGain = 71;
    qam64SnCeGain = 65;
   }
   break;
  }

  switch (p->guard_interval) {
  case 138:
   transmissionParams |= SC_RA_RAM_OP_PARAM_GUARD_4;
   break;
  case 137:
   transmissionParams |= SC_RA_RAM_OP_PARAM_GUARD_8;
   break;
  case 140:
   transmissionParams |= SC_RA_RAM_OP_PARAM_GUARD_16;
   break;
  case 139:
   transmissionParams |= SC_RA_RAM_OP_PARAM_GUARD_32;
   break;
  default:
   operationMode |= SC_RA_RAM_OP_AUTO_GUARD__M;

   transmissionParams |= SC_RA_RAM_OP_PARAM_GUARD_4;
   break;
  }

  switch (p->hierarchy) {
  case 136:
   transmissionParams |= SC_RA_RAM_OP_PARAM_HIER_A1;
   if (state->type_A) {
    status = Write16(state, EQ_REG_OT_ALPHA__A, 0x0001, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_ALPHA__A, 0x0001, 0x0000);
    if (status < 0)
     break;

    qpskTdTpsPwr = EQ_TD_TPS_PWR_UNKNOWN;
    qam16TdTpsPwr = EQ_TD_TPS_PWR_QAM16_ALPHA1;
    qam64TdTpsPwr = EQ_TD_TPS_PWR_QAM64_ALPHA1;

    qpskIsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_MAN__PRE;
    qam16IsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_16QAM_MAN__PRE;
    qam64IsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_64QAM_MAN__PRE;

    qpskIsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_EXP__PRE;
    qam16IsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_16QAM_EXP__PRE;
    qam64IsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_64QAM_EXP__PRE;
   }
   break;

  case 135:
   transmissionParams |= SC_RA_RAM_OP_PARAM_HIER_A2;
   if (state->type_A) {
    status = Write16(state, EQ_REG_OT_ALPHA__A, 0x0002, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_ALPHA__A, 0x0002, 0x0000);
    if (status < 0)
     break;

    qpskTdTpsPwr = EQ_TD_TPS_PWR_UNKNOWN;
    qam16TdTpsPwr = EQ_TD_TPS_PWR_QAM16_ALPHA2;
    qam64TdTpsPwr = EQ_TD_TPS_PWR_QAM64_ALPHA2;

    qpskIsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_MAN__PRE;
    qam16IsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_16QAM_A2_MAN__PRE;
    qam64IsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_64QAM_A2_MAN__PRE;

    qpskIsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_EXP__PRE;
    qam16IsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_16QAM_A2_EXP__PRE;
    qam64IsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_64QAM_A2_EXP__PRE;
   }
   break;
  case 134:
   transmissionParams |= SC_RA_RAM_OP_PARAM_HIER_A4;
   if (state->type_A) {
    status = Write16(state, EQ_REG_OT_ALPHA__A, 0x0003, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_ALPHA__A, 0x0003, 0x0000);
    if (status < 0)
     break;

    qpskTdTpsPwr = EQ_TD_TPS_PWR_UNKNOWN;
    qam16TdTpsPwr = EQ_TD_TPS_PWR_QAM16_ALPHA4;
    qam64TdTpsPwr = EQ_TD_TPS_PWR_QAM64_ALPHA4;

    qpskIsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_MAN__PRE;
    qam16IsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_16QAM_A4_MAN__PRE;
    qam64IsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_64QAM_A4_MAN__PRE;

    qpskIsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_EXP__PRE;
    qam16IsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_16QAM_A4_EXP__PRE;
    qam64IsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_64QAM_A4_EXP__PRE;
   }
   break;
  case 133:
  default:

   operationMode |= SC_RA_RAM_OP_AUTO_HIER__M;
   transmissionParams |= SC_RA_RAM_OP_PARAM_HIER_NO;
   if (state->type_A) {
    status = Write16(state, EQ_REG_OT_ALPHA__A, 0x0000, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_ALPHA__A, 0x0000, 0x0000);
    if (status < 0)
     break;

    qpskTdTpsPwr = EQ_TD_TPS_PWR_QPSK;
    qam16TdTpsPwr = EQ_TD_TPS_PWR_QAM16_ALPHAN;
    qam64TdTpsPwr = EQ_TD_TPS_PWR_QAM64_ALPHAN;

    qpskIsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_QPSK_MAN__PRE;
    qam16IsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_16QAM_MAN__PRE;
    qam64IsGainMan =
        SC_RA_RAM_EQ_IS_GAIN_64QAM_MAN__PRE;

    qpskIsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_QPSK_EXP__PRE;
    qam16IsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_16QAM_EXP__PRE;
    qam64IsGainExp =
        SC_RA_RAM_EQ_IS_GAIN_64QAM_EXP__PRE;
   }
   break;
  }
  if (status < 0)
   break;

  switch (p->modulation) {
  default:
   operationMode |= SC_RA_RAM_OP_AUTO_CONST__M;

  case 131:
   transmissionParams |= SC_RA_RAM_OP_PARAM_CONST_QAM64;
   if (state->type_A) {
    status = Write16(state, EQ_REG_OT_CONST__A, 0x0002, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_CONST__A, EC_SB_REG_CONST_64QAM, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_SCALE_MSB__A, 0x0020, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_SCALE_BIT2__A, 0x0008, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_SCALE_LSB__A, 0x0002, 0x0000);
    if (status < 0)
     break;

    status = Write16(state, EQ_REG_TD_TPS_PWR_OFS__A, qam64TdTpsPwr, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EQ_REG_SN_CEGAIN__A, qam64SnCeGain, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EQ_REG_IS_GAIN_MAN__A, qam64IsGainMan, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EQ_REG_IS_GAIN_EXP__A, qam64IsGainExp, 0x0000);
    if (status < 0)
     break;
   }
   break;
  case 130:
   transmissionParams |= SC_RA_RAM_OP_PARAM_CONST_QPSK;
   if (state->type_A) {
    status = Write16(state, EQ_REG_OT_CONST__A, 0x0000, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_CONST__A, EC_SB_REG_CONST_QPSK, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_SCALE_MSB__A, 0x0010, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_SCALE_BIT2__A, 0x0000, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_SCALE_LSB__A, 0x0000, 0x0000);
    if (status < 0)
     break;

    status = Write16(state, EQ_REG_TD_TPS_PWR_OFS__A, qpskTdTpsPwr, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EQ_REG_SN_CEGAIN__A, qpskSnCeGain, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EQ_REG_IS_GAIN_MAN__A, qpskIsGainMan, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EQ_REG_IS_GAIN_EXP__A, qpskIsGainExp, 0x0000);
    if (status < 0)
     break;
   }
   break;

  case 132:
   transmissionParams |= SC_RA_RAM_OP_PARAM_CONST_QAM16;
   if (state->type_A) {
    status = Write16(state, EQ_REG_OT_CONST__A, 0x0001, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_CONST__A, EC_SB_REG_CONST_16QAM, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_SCALE_MSB__A, 0x0010, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_SCALE_BIT2__A, 0x0004, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EC_SB_REG_SCALE_LSB__A, 0x0000, 0x0000);
    if (status < 0)
     break;

    status = Write16(state, EQ_REG_TD_TPS_PWR_OFS__A, qam16TdTpsPwr, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EQ_REG_SN_CEGAIN__A, qam16SnCeGain, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EQ_REG_IS_GAIN_MAN__A, qam16IsGainMan, 0x0000);
    if (status < 0)
     break;
    status = Write16(state, EQ_REG_IS_GAIN_EXP__A, qam16IsGainExp, 0x0000);
    if (status < 0)
     break;
   }
   break;

  }
  if (status < 0)
   break;

  switch (147) {
  default:
  case 148:
  case 146:
   transmissionParams |= SC_RA_RAM_OP_PARAM_PRIO_LO;
   status = Write16(state, EC_SB_REG_PRIOR__A, EC_SB_REG_PRIOR_LO, 0x0000);
   break;
  case 147:
   transmissionParams |= SC_RA_RAM_OP_PARAM_PRIO_HI;
   status = Write16(state, EC_SB_REG_PRIOR__A, EC_SB_REG_PRIOR_HI, 0x0000);
   break;
  }

  switch (p->code_rate_HP) {
  case 145:
   transmissionParams |= SC_RA_RAM_OP_PARAM_RATE_1_2;
   if (state->type_A)
    status = Write16(state, EC_VD_REG_SET_CODERATE__A, EC_VD_REG_SET_CODERATE_C1_2, 0x0000);
   break;
  default:
   operationMode |= SC_RA_RAM_OP_AUTO_RATE__M;

  case 144:
   transmissionParams |= SC_RA_RAM_OP_PARAM_RATE_2_3;
   if (state->type_A)
    status = Write16(state, EC_VD_REG_SET_CODERATE__A, EC_VD_REG_SET_CODERATE_C2_3, 0x0000);
   break;
  case 143:
   transmissionParams |= SC_RA_RAM_OP_PARAM_RATE_3_4;
   if (state->type_A)
    status = Write16(state, EC_VD_REG_SET_CODERATE__A, EC_VD_REG_SET_CODERATE_C3_4, 0x0000);
   break;
  case 142:
   transmissionParams |= SC_RA_RAM_OP_PARAM_RATE_5_6;
   if (state->type_A)
    status = Write16(state, EC_VD_REG_SET_CODERATE__A, EC_VD_REG_SET_CODERATE_C5_6, 0x0000);
   break;
  case 141:
   transmissionParams |= SC_RA_RAM_OP_PARAM_RATE_7_8;
   if (state->type_A)
    status = Write16(state, EC_VD_REG_SET_CODERATE__A, EC_VD_REG_SET_CODERATE_C7_8, 0x0000);
   break;
  }
  if (status < 0)
   break;
  switch (p->bandwidth_hz) {
  case 0:
   p->bandwidth_hz = 8000000;

  case 8000000:

   bandwidth = DRXD_BANDWIDTH_8MHZ_IN_HZ;

   bandwidthParam = 0;
   status = Write16(state,
      FE_AG_REG_IND_DEL__A, 50, 0x0000);
   break;
  case 7000000:

   bandwidth = DRXD_BANDWIDTH_7MHZ_IN_HZ;
   bandwidthParam = 0x4807;
   status = Write16(state,
      FE_AG_REG_IND_DEL__A, 59, 0x0000);
   break;
  case 6000000:

   bandwidth = DRXD_BANDWIDTH_6MHZ_IN_HZ;
   bandwidthParam = 0x0F07;
   status = Write16(state,
      FE_AG_REG_IND_DEL__A, 71, 0x0000);
   break;
  default:
   status = -EINVAL;
  }
  if (status < 0)
   break;

  status = Write16(state, SC_RA_RAM_BAND__A, bandwidthParam, 0x0000);
  if (status < 0)
   break;

  {
   u16 sc_config;
   status = Read16(state, SC_RA_RAM_CONFIG__A, &sc_config, 0);
   if (status < 0)
    break;



   if ((p->transmission_mode == 129) &&
       (p->guard_interval == 139)) {

    sc_config |= SC_RA_RAM_CONFIG_SLAVE__M;
   } else {

    sc_config &= ~SC_RA_RAM_CONFIG_SLAVE__M;
   }
   status = Write16(state, SC_RA_RAM_CONFIG__A, sc_config, 0);
   if (status < 0)
    break;
  }

  status = SetCfgNoiseCalibration(state, &state->noise_cal);
  if (status < 0)
   break;

  if (state->cscd_state == CSCD_INIT) {

   status = Write16(state, SC_RA_RAM_SAMPLE_RATE_COUNT__A, DRXD_OSCDEV_DO_SCAN, 0x0000);
   if (status < 0)
    break;

   state->cscd_state = CSCD_SET;
  }




  feIfIncr = MulDiv32(state->sys_clock_freq * 1000,
        (1ULL << 21), bandwidth) - (1 << 23);
  status = Write16(state, FE_IF_REG_INCR0__A, (u16) (feIfIncr & FE_IF_REG_INCR0__M), 0x0000);
  if (status < 0)
   break;
  status = Write16(state, FE_IF_REG_INCR1__A, (u16) ((feIfIncr >> FE_IF_REG_INCR0__W) & FE_IF_REG_INCR1__M), 0x0000);
  if (status < 0)
   break;



  SetFrequencyShift(state, off, mirrorFreqSpect);




  status = Write16(state, SC_COMM_STATE__A, 0, 0x0000);
  if (status < 0)
   break;
  status = Write16(state, SC_COMM_EXEC__A, 1, 0x0000);
  if (status < 0)
   break;



  operationMode = (SC_RA_RAM_OP_AUTO_MODE__M |
     SC_RA_RAM_OP_AUTO_GUARD__M |
     SC_RA_RAM_OP_AUTO_CONST__M |
     SC_RA_RAM_OP_AUTO_HIER__M |
     SC_RA_RAM_OP_AUTO_RATE__M);

  status = SC_SetPrefParamCommand(state, 0x0000, transmissionParams, operationMode);
  if (status < 0)
   break;


  status = SC_ProcStartCommand(state, SC_RA_RAM_PROC_LOCKTRACK, SC_RA_RAM_SW_EVENT_RUN_NMASK__M, SC_RA_RAM_LOCKTRACK_MIN);
  if (status < 0)
   break;

  status = StartOC(state);
  if (status < 0)
   break;

  if (state->operation_mode != OM_Default) {
   status = StartDiversity(state);
   if (status < 0)
    break;
  }

  state->drxd_state = DRXD_STARTED;
 } while (0);

 return status;
}
