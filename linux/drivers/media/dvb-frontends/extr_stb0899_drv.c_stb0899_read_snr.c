
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef unsigned int u16 ;
struct stb0899_internal {int lock; } ;
struct stb0899_state {int delsys; int verbose; struct stb0899_internal internal; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ESN0_EST ;
 int FE_DEBUG ;
 unsigned int MAKEWORD16 (int ,int ) ;
 unsigned int STB0899_GETFIELD (int ,int ) ;
 int STB0899_NIRM ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_VSTATUS ;



 int UWP_CNTRL1 ;
 int UWP_ESN0_QUANT ;
 int UWP_STAT2 ;
 int VSTATUS_LOCKEDVIT ;
 int dprintk (int ,int ,int,char*,...) ;
 int stb0899_cn_tab ;
 int stb0899_est_tab ;
 int stb0899_quant_tab ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;
 int stb0899_read_regs (struct stb0899_state*,int ,int *,int) ;
 void* stb0899_table_lookup (int ,int ,unsigned int) ;

__attribute__((used)) static int stb0899_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct stb0899_state *state = fe->demodulator_priv;
 struct stb0899_internal *internal = &state->internal;

 unsigned int val, quant, quantn = -1, est, estn = -1;
 u8 buf[2];
 u32 reg;

 *snr = 0;
 reg = stb0899_read_reg(state, STB0899_VSTATUS);
 switch (state->delsys) {
 case 129:
 case 130:
  if (internal->lock) {
   if (STB0899_GETFIELD(VSTATUS_LOCKEDVIT, reg)) {

    stb0899_read_regs(state, STB0899_NIRM, buf, 2);
    val = MAKEWORD16(buf[0], buf[1]);

    *snr = stb0899_table_lookup(stb0899_cn_tab, ARRAY_SIZE(stb0899_cn_tab) - 1, val);
    dprintk(state->verbose, FE_DEBUG, 1, "NIR = 0x%02x%02x = %u, C/N = %d * 0.1 dBm\n",
     buf[0], buf[1], val, *snr);
   }
  }
  break;
 case 128:
  if (internal->lock) {
   reg = STB0899_READ_S2REG(STB0899_S2DEMOD, UWP_CNTRL1);
   quant = STB0899_GETFIELD(UWP_ESN0_QUANT, reg);
   reg = STB0899_READ_S2REG(STB0899_S2DEMOD, UWP_STAT2);
   est = STB0899_GETFIELD(ESN0_EST, reg);
   if (est == 1)
    val = 301;
   else if (est == 2)
    val = 270;
   else {

    quantn = stb0899_table_lookup(stb0899_quant_tab, ARRAY_SIZE(stb0899_quant_tab) - 1, quant * 100);

    estn = stb0899_table_lookup(stb0899_est_tab, ARRAY_SIZE(stb0899_est_tab) - 1, est);

    val = (quantn - estn) / 10;
   }
   *snr = val;
   dprintk(state->verbose, FE_DEBUG, 1, "Es/N0 quant = %d (%d) estimate = %u (%d), C/N = %d * 0.1 dBm",
    quant, quantn, est, estn, val);
  }
  break;
 default:
  dprintk(state->verbose, FE_DEBUG, 1, "Unsupported delivery system");
  return -EINVAL;
 }

 return 0;
}
