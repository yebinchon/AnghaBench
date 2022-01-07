
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_internal {int master_clk; int srate; } ;
struct stb0899_state {struct stb0899_internal internal; } ;
typedef int s32 ;
typedef enum stb0899_modcod { ____Placeholder_stb0899_modcod } stb0899_modcod ;


 int CSM_AGC_GAIN ;
 int CSM_AGC_SHIFT ;
 int CSM_AUTO_PARAM ;
 int CSM_CNTRL1 ;
 int CSM_CNTRL2 ;
 int CSM_CNTRL3 ;
 int CSM_CNTRL4 ;
 int CSM_DVT_TABLE ;
 int CSM_GAMMA_ACQ ;
 int CSM_GAMMA_RHOACQ ;
 int CSM_GAMMA_RHOTRACK ;
 int CSM_GAMMA_TRACK ;
 int CSM_LOCKCOUNT_THRESH ;
 int CSM_PHASEDIFF_THRESH ;
 int CSM_TWO_PASS ;
 int FE_LOOP_SHIFT ;
 int STB0899_BASE_CSM_CNTRL1 ;
 int STB0899_BASE_CSM_CNTRL2 ;
 int STB0899_BASE_CSM_CNTRL3 ;
 int STB0899_BASE_CSM_CNTRL4 ;
 int STB0899_OFF0_CSM_CNTRL1 ;
 int STB0899_OFF0_CSM_CNTRL2 ;
 int STB0899_OFF0_CSM_CNTRL3 ;
 int STB0899_OFF0_CSM_CNTRL4 ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_SETFIELD_VAL (int ,int ,int) ;
 int stb0899_write_s2reg (struct stb0899_state*,int ,int ,int ,int ) ;

__attribute__((used)) static void stb0899_dvbs2_init_csm(struct stb0899_state *state, int pilots, enum stb0899_modcod modcod)
{
 struct stb0899_internal *internal = &state->internal;

 s32 dvt_tbl = 1, two_pass = 0, agc_gain = 6, agc_shift = 0, loop_shift = 0, phs_diff_thr = 0x80;
 s32 gamma_acq, gamma_rho_acq, gamma_trk, gamma_rho_trk, lock_count_thr;
 u32 csm1, csm2, csm3, csm4;

 if (((internal->master_clk / internal->srate) <= 4) && (modcod <= 11) && (pilots == 1)) {
  switch (modcod) {
  case 135:
   gamma_acq = 25;
   gamma_rho_acq = 2700;
   gamma_trk = 12;
   gamma_rho_trk = 180;
   lock_count_thr = 8;
   break;
  case 132:
   gamma_acq = 38;
   gamma_rho_acq = 7182;
   gamma_trk = 14;
   gamma_rho_trk = 308;
   lock_count_thr = 8;
   break;
  case 134:
   gamma_acq = 42;
   gamma_rho_acq = 9408;
   gamma_trk = 17;
   gamma_rho_trk = 476;
   lock_count_thr = 8;
   break;
  case 133:
   gamma_acq = 53;
   gamma_rho_acq = 16642;
   gamma_trk = 19;
   gamma_rho_trk = 646;
   lock_count_thr = 8;
   break;
  case 131:
   gamma_acq = 53;
   gamma_rho_acq = 17119;
   gamma_trk = 22;
   gamma_rho_trk = 880;
   lock_count_thr = 8;
   break;
  case 130:
   gamma_acq = 55;
   gamma_rho_acq = 19250;
   gamma_trk = 23;
   gamma_rho_trk = 989;
   lock_count_thr = 8;
   break;
  case 129:
   gamma_acq = 60;
   gamma_rho_acq = 24240;
   gamma_trk = 24;
   gamma_rho_trk = 1176;
   lock_count_thr = 8;
   break;
  case 128:
   gamma_acq = 66;
   gamma_rho_acq = 29634;
   gamma_trk = 24;
   gamma_rho_trk = 1176;
   lock_count_thr = 8;
   break;
  default:
   gamma_acq = 66;
   gamma_rho_acq = 29634;
   gamma_trk = 24;
   gamma_rho_trk = 1176;
   lock_count_thr = 8;
   break;
  }

  csm1 = STB0899_READ_S2REG(STB0899_S2DEMOD, CSM_CNTRL1);
  STB0899_SETFIELD_VAL(CSM_AUTO_PARAM, csm1, 0);
  stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL1, STB0899_OFF0_CSM_CNTRL1, csm1);

  csm1 = STB0899_READ_S2REG(STB0899_S2DEMOD, CSM_CNTRL1);
  csm2 = STB0899_READ_S2REG(STB0899_S2DEMOD, CSM_CNTRL2);
  csm3 = STB0899_READ_S2REG(STB0899_S2DEMOD, CSM_CNTRL3);
  csm4 = STB0899_READ_S2REG(STB0899_S2DEMOD, CSM_CNTRL4);

  STB0899_SETFIELD_VAL(CSM_DVT_TABLE, csm1, dvt_tbl);
  STB0899_SETFIELD_VAL(CSM_TWO_PASS, csm1, two_pass);
  STB0899_SETFIELD_VAL(CSM_AGC_GAIN, csm1, agc_gain);
  STB0899_SETFIELD_VAL(CSM_AGC_SHIFT, csm1, agc_shift);
  STB0899_SETFIELD_VAL(FE_LOOP_SHIFT, csm1, loop_shift);
  STB0899_SETFIELD_VAL(CSM_GAMMA_ACQ, csm2, gamma_acq);
  STB0899_SETFIELD_VAL(CSM_GAMMA_RHOACQ, csm2, gamma_rho_acq);
  STB0899_SETFIELD_VAL(CSM_GAMMA_TRACK, csm3, gamma_trk);
  STB0899_SETFIELD_VAL(CSM_GAMMA_RHOTRACK, csm3, gamma_rho_trk);
  STB0899_SETFIELD_VAL(CSM_LOCKCOUNT_THRESH, csm4, lock_count_thr);
  STB0899_SETFIELD_VAL(CSM_PHASEDIFF_THRESH, csm4, phs_diff_thr);

  stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL1, STB0899_OFF0_CSM_CNTRL1, csm1);
  stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL2, STB0899_OFF0_CSM_CNTRL2, csm2);
  stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL3, STB0899_OFF0_CSM_CNTRL3, csm3);
  stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL4, STB0899_OFF0_CSM_CNTRL4, csm4);
 }
}
