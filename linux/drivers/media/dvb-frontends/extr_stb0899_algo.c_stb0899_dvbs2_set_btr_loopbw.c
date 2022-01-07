
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_internal {int master_clk; int srate; } ;
struct stb0899_state {struct stb0899_config* config; struct stb0899_internal internal; } ;
struct stb0899_config {int btr_nco_bits; int btr_gain_shift_offset; } ;
typedef int s32 ;


 int BTR_LOOP_GAIN ;
 int KBTR0 ;
 int KBTR0_RSHFT ;
 int KBTR1 ;
 int KBTR1_RSHFT ;
 int KBTR2_RSHFT ;
 int Log2Int (int) ;
 int STB0899_BASE_BTR_LOOP_GAIN ;
 int STB0899_OFF0_BTR_LOOP_GAIN ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_SETFIELD_VAL (int ,int,int) ;
 int stb0899_write_s2reg (struct stb0899_state*,int ,int ,int ,int) ;

__attribute__((used)) static void stb0899_dvbs2_set_btr_loopbw(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 struct stb0899_config *config = state->config;

 u32 sym_peak = 23, zeta = 707, loopbw_percent = 60;
 s32 dec_ratio, dec_rate, k_btr1_rshft, k_btr1, k_btr0_rshft;
 s32 k_btr0, k_btr2_rshft, k_direct_shift, k_indirect_shift;
 u32 decim, K, wn, k_direct, k_indirect;
 u32 reg;

 dec_ratio = (internal->master_clk * 2) / (5 * internal->srate);
 dec_ratio = (dec_ratio == 0) ? 1 : dec_ratio;
 dec_rate = Log2Int(dec_ratio);
 decim = (1 << dec_rate);

 sym_peak *= 576000;
 K = (1 << config->btr_nco_bits) / (internal->master_clk / 1000);
 K *= (internal->srate / 1000000) * decim;

 if (K != 0) {
  K = sym_peak / K;
  wn = (4 * zeta * zeta) + 1000000;
  wn = (2 * (loopbw_percent * 1000) * 40 * zeta) /wn;

  k_indirect = (wn * wn) / K;
  k_direct = (2 * wn * zeta) / K;
  k_direct *= 100;

  k_direct_shift = Log2Int(k_direct) - Log2Int(10000) - 2;
  k_btr1_rshft = (-1 * k_direct_shift) + config->btr_gain_shift_offset;
  k_btr1 = k_direct / (1 << k_direct_shift);
  k_btr1 /= 10000;

  k_indirect_shift = Log2Int(k_indirect + 15) - 20 ;
  k_btr0_rshft = (-1 * k_indirect_shift) + config->btr_gain_shift_offset;
  k_btr0 = k_indirect * (1 << (-k_indirect_shift));
  k_btr0 /= 1000000;

  k_btr2_rshft = 0;
  if (k_btr0_rshft > 15) {
   k_btr2_rshft = k_btr0_rshft - 15;
   k_btr0_rshft = 15;
  }
  reg = STB0899_READ_S2REG(STB0899_S2DEMOD, BTR_LOOP_GAIN);
  STB0899_SETFIELD_VAL(KBTR0_RSHFT, reg, k_btr0_rshft);
  STB0899_SETFIELD_VAL(KBTR0, reg, k_btr0);
  STB0899_SETFIELD_VAL(KBTR1_RSHFT, reg, k_btr1_rshft);
  STB0899_SETFIELD_VAL(KBTR1, reg, k_btr1);
  STB0899_SETFIELD_VAL(KBTR2_RSHFT, reg, k_btr2_rshft);
  stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_BTR_LOOP_GAIN, STB0899_OFF0_BTR_LOOP_GAIN, reg);
 } else
  stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_BTR_LOOP_GAIN, STB0899_OFF0_BTR_LOOP_GAIN, 0xc4c4f);
}
