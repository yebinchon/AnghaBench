
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nxt6000_state {int dummy; } ;


 int OFDM_COR_STAT ;
 int OFDM_SYR_STAT ;
 int OFDM_TPS_RCVD_1 ;
 int OFDM_TPS_RCVD_2 ;
 int OFDM_TPS_RCVD_3 ;
 int OFDM_TPS_RCVD_4 ;
 int OFDM_TPS_RESERVED_1 ;
 int OFDM_TPS_RESERVED_2 ;
 int RF_AGC_STATUS ;
 int RF_AGC_VAL_1 ;
 int RS_COR_STAT ;
 int VIT_SYNC_STATUS ;
 struct nxt6000_state* fe ;
 int nxt6000_readreg (struct nxt6000_state*,int ) ;
 int pr_cont (char*,...) ;
 int pr_info (char*,...) ;

__attribute__((used)) static void nxt6000_dump_status(struct nxt6000_state *state)
{
 u8 val;
 pr_info("NXT6000 status:");

 val = nxt6000_readreg(state, RS_COR_STAT);

 pr_cont(" DATA DESCR LOCK: %d,", val & 0x01);
 pr_cont(" DATA SYNC LOCK: %d,", (val >> 1) & 0x01);

 val = nxt6000_readreg(state, VIT_SYNC_STATUS);

 pr_cont(" VITERBI LOCK: %d,", (val >> 7) & 0x01);

 switch ((val >> 4) & 0x07) {

 case 0x00:
  pr_cont(" VITERBI CODERATE: 1/2,");
  break;

 case 0x01:
  pr_cont(" VITERBI CODERATE: 2/3,");
  break;

 case 0x02:
  pr_cont(" VITERBI CODERATE: 3/4,");
  break;

 case 0x03:
  pr_cont(" VITERBI CODERATE: 5/6,");
  break;

 case 0x04:
  pr_cont(" VITERBI CODERATE: 7/8,");
  break;

 default:
  pr_cont(" VITERBI CODERATE: Reserved,");

 }

 val = nxt6000_readreg(state, OFDM_COR_STAT);

 pr_cont(" CHCTrack: %d,", (val >> 7) & 0x01);
 pr_cont(" TPSLock: %d,", (val >> 6) & 0x01);
 pr_cont(" SYRLock: %d,", (val >> 5) & 0x01);
 pr_cont(" AGCLock: %d,", (val >> 4) & 0x01);

 switch (val & 0x0F) {

 case 0x00:
  pr_cont(" CoreState: IDLE,");
  break;

 case 0x02:
  pr_cont(" CoreState: WAIT_AGC,");
  break;

 case 0x03:
  pr_cont(" CoreState: WAIT_SYR,");
  break;

 case 0x04:
  pr_cont(" CoreState: WAIT_PPM,");
  break;

 case 0x01:
  pr_cont(" CoreState: WAIT_TRL,");
  break;

 case 0x05:
  pr_cont(" CoreState: WAIT_TPS,");
  break;

 case 0x06:
  pr_cont(" CoreState: MONITOR_TPS,");
  break;

 default:
  pr_cont(" CoreState: Reserved,");

 }

 val = nxt6000_readreg(state, OFDM_SYR_STAT);

 pr_cont(" SYRLock: %d,", (val >> 4) & 0x01);
 pr_cont(" SYRMode: %s,", (val >> 2) & 0x01 ? "8K" : "2K");

 switch ((val >> 4) & 0x03) {

 case 0x00:
  pr_cont(" SYRGuard: 1/32,");
  break;

 case 0x01:
  pr_cont(" SYRGuard: 1/16,");
  break;

 case 0x02:
  pr_cont(" SYRGuard: 1/8,");
  break;

 case 0x03:
  pr_cont(" SYRGuard: 1/4,");
  break;
 }

 val = nxt6000_readreg(state, OFDM_TPS_RCVD_3);

 switch ((val >> 4) & 0x07) {

 case 0x00:
  pr_cont(" TPSLP: 1/2,");
  break;

 case 0x01:
  pr_cont(" TPSLP: 2/3,");
  break;

 case 0x02:
  pr_cont(" TPSLP: 3/4,");
  break;

 case 0x03:
  pr_cont(" TPSLP: 5/6,");
  break;

 case 0x04:
  pr_cont(" TPSLP: 7/8,");
  break;

 default:
  pr_cont(" TPSLP: Reserved,");

 }

 switch (val & 0x07) {

 case 0x00:
  pr_cont(" TPSHP: 1/2,");
  break;

 case 0x01:
  pr_cont(" TPSHP: 2/3,");
  break;

 case 0x02:
  pr_cont(" TPSHP: 3/4,");
  break;

 case 0x03:
  pr_cont(" TPSHP: 5/6,");
  break;

 case 0x04:
  pr_cont(" TPSHP: 7/8,");
  break;

 default:
  pr_cont(" TPSHP: Reserved,");

 }

 val = nxt6000_readreg(state, OFDM_TPS_RCVD_4);

 pr_cont(" TPSMode: %s,", val & 0x01 ? "8K" : "2K");

 switch ((val >> 4) & 0x03) {

 case 0x00:
  pr_cont(" TPSGuard: 1/32,");
  break;

 case 0x01:
  pr_cont(" TPSGuard: 1/16,");
  break;

 case 0x02:
  pr_cont(" TPSGuard: 1/8,");
  break;

 case 0x03:
  pr_cont(" TPSGuard: 1/4,");
  break;

 }


 nxt6000_readreg(state, RF_AGC_VAL_1);
 val = nxt6000_readreg(state, RF_AGC_STATUS);
 val = nxt6000_readreg(state, RF_AGC_STATUS);

 pr_cont(" RF AGC LOCK: %d,", (val >> 4) & 0x01);
 pr_cont("\n");
}
