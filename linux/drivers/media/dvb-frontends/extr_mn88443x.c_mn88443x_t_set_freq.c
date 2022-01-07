
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct mn88443x_priv {int clk_freq; int use_clkbuf; scalar_t__ if_freq; struct regmap* regmap_t; TYPE_1__* client_s; } ;
struct device {int dummy; } ;
typedef int s64 ;
struct TYPE_2__ {struct device dev; } ;


 int ADCSET1_T ;
 int ADCSET1_T_REFSEL_1_5V ;
 int ADCSET1_T_REFSEL_MASK ;
 int AGCSET2_T ;
 int AGCSET2_T_IFPOLINV_INC ;
 int AGCSET2_T_RFPOLINV_INC ;
 int AGCV3_T ;
 int CLKSET1_T ;
 int CLK_DIRECT ;
 int CLK_LOW ;
 scalar_t__ DIRECT_IF_44MHZ ;
 scalar_t__ DIRECT_IF_57MHZ ;
 int EINVAL ;
 int FADL_T ;
 int FADM_T ;
 int FADU_T ;
 int MDSET_T ;
 int NCOFREQL_T ;
 int NCOFREQM_T ;
 int NCOFREQU_T ;
 int S_T_FREQ ;
 int dev_err (struct device*,char*,int,int,scalar_t__) ;
 int div_s64 (int,int) ;
 int mn88443x_t_is_valid_clk (int,scalar_t__) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int mn88443x_t_set_freq(struct mn88443x_priv *chip)
{
 struct device *dev = &chip->client_s->dev;
 struct regmap *r_t = chip->regmap_t;
 s64 adckt, nco, ad_t;
 u32 m, v;


 if (chip->clk_freq >= CLK_LOW && chip->clk_freq < CLK_DIRECT) {
  chip->use_clkbuf = 1;
  regmap_write(r_t, CLKSET1_T, 0x07);

  adckt = 0;
 } else {
  chip->use_clkbuf = 0;
  regmap_write(r_t, CLKSET1_T, 0x00);

  adckt = chip->clk_freq;
 }
 if (!mn88443x_t_is_valid_clk(adckt, chip->if_freq)) {
  dev_err(dev, "Invalid clock, CLK:%d, ADCKT:%lld, IF:%d\n",
   chip->clk_freq, adckt, chip->if_freq);
  return -EINVAL;
 }


 if (chip->if_freq == DIRECT_IF_57MHZ ||
     chip->if_freq == DIRECT_IF_44MHZ)
  nco = adckt * 2 - chip->if_freq;
 else
  nco = -((s64)chip->if_freq);
 nco = div_s64(nco << 24, adckt);
 ad_t = div_s64(adckt << 22, S_T_FREQ);

 regmap_write(r_t, NCOFREQU_T, nco >> 16);
 regmap_write(r_t, NCOFREQM_T, nco >> 8);
 regmap_write(r_t, NCOFREQL_T, nco);
 regmap_write(r_t, FADU_T, ad_t >> 16);
 regmap_write(r_t, FADM_T, ad_t >> 8);
 regmap_write(r_t, FADL_T, ad_t);


 m = ADCSET1_T_REFSEL_MASK;
 v = ADCSET1_T_REFSEL_1_5V;
 regmap_update_bits(r_t, ADCSET1_T, m, v);


 v = AGCSET2_T_IFPOLINV_INC | AGCSET2_T_RFPOLINV_INC;
 regmap_update_bits(r_t, AGCSET2_T, v, v);


 regmap_write(r_t, AGCV3_T, 0x00);

 regmap_write(r_t, MDSET_T, 0xfa);

 return 0;
}
