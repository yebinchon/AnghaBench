
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adf4371_state {int integer; int fract1; int fract2; int mod2; int* buf; int ref_div_factor; int regmap; int rf_div_sel; int fpfd; } ;


 int ADF4371_CHECK_RANGE (unsigned long long,int ) ;




 int ADF4371_FRAC1WORD (int) ;
 int ADF4371_FRAC2WORD_H (int) ;
 int ADF4371_FRAC2WORD_L (int) ;
 unsigned long long ADF4371_MIN_VCO_FREQ ;
 int ADF4371_MOD2WORD (int) ;
 int ADF4371_REG (int) ;
 int ADF4371_RF_DIV_SEL (int ) ;
 int ADF4371_RF_DIV_SEL_MSK ;
 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int OUT_RF16_FREQ ;
 int OUT_RF32_FREQ ;
 int OUT_RF8_FREQ ;
 int adf4371_pll_fract_n_compute (unsigned long long,int ,int*,int*,int*,int*) ;
 int clamp (int,unsigned int,unsigned int) ;
 int regmap_bulk_write (int ,int ,int*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int adf4371_set_freq(struct adf4371_state *st, unsigned long long freq,
       unsigned int channel)
{
 u32 cp_bleed;
 u8 int_mode = 0;
 int ret;

 switch (channel) {
 case 129:
 case 128:
  if (ADF4371_CHECK_RANGE(freq, OUT_RF8_FREQ))
   return -EINVAL;

  st->rf_div_sel = 0;

  while (freq < ADF4371_MIN_VCO_FREQ) {
   freq <<= 1;
   st->rf_div_sel++;
  }
  break;
 case 131:

  if (ADF4371_CHECK_RANGE(freq, OUT_RF16_FREQ))
   return -EINVAL;

  freq >>= 1;
  break;
 case 130:

  if (ADF4371_CHECK_RANGE(freq, OUT_RF32_FREQ))
   return -EINVAL;

  freq >>= 2;
  break;
 default:
  return -EINVAL;
 }

 adf4371_pll_fract_n_compute(freq, st->fpfd, &st->integer, &st->fract1,
        &st->fract2, &st->mod2);
 st->buf[0] = st->integer >> 8;
 st->buf[1] = 0x40;
 st->buf[2] = 0x00;
 st->buf[3] = st->fract1 & 0xFF;
 st->buf[4] = st->fract1 >> 8;
 st->buf[5] = st->fract1 >> 16;
 st->buf[6] = ADF4371_FRAC2WORD_L(st->fract2 & 0x7F) |
       ADF4371_FRAC1WORD(st->fract1 >> 24);
 st->buf[7] = ADF4371_FRAC2WORD_H(st->fract2 >> 7);
 st->buf[8] = st->mod2 & 0xFF;
 st->buf[9] = ADF4371_MOD2WORD(st->mod2 >> 8);

 ret = regmap_bulk_write(st->regmap, ADF4371_REG(0x11), st->buf, 10);
 if (ret < 0)
  return ret;




 ret = regmap_write(st->regmap, ADF4371_REG(0x1F), st->ref_div_factor);
 if (ret < 0)
  return ret;

 ret = regmap_update_bits(st->regmap, ADF4371_REG(0x24),
     ADF4371_RF_DIV_SEL_MSK,
     ADF4371_RF_DIV_SEL(st->rf_div_sel));
 if (ret < 0)
  return ret;

 cp_bleed = DIV_ROUND_UP(400 * 1750, st->integer * 375);
 cp_bleed = clamp(cp_bleed, 1U, 255U);
 ret = regmap_write(st->regmap, ADF4371_REG(0x26), cp_bleed);
 if (ret < 0)
  return ret;




 if (st->fract1 == 0 && st->fract2 == 0)
  int_mode = 0x01;

 ret = regmap_write(st->regmap, ADF4371_REG(0x2B), int_mode);
 if (ret < 0)
  return ret;

 return regmap_write(st->regmap, ADF4371_REG(0x10), st->integer & 0xFF);
}
