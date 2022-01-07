
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {int regmap; int f_audio; int f_tmds; } ;


 int ADV7511_REG_CTS_MANUAL0 ;
 int ADV7511_REG_CTS_MANUAL1 ;
 int ADV7511_REG_CTS_MANUAL2 ;
 int ADV7511_REG_N0 ;
 int ADV7511_REG_N1 ;
 int ADV7511_REG_N2 ;
 int adv7511_calc_cts_n (int ,int ,unsigned int*,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int adv7511_update_cts_n(struct adv7511 *adv7511)
{
 unsigned int cts = 0;
 unsigned int n = 0;

 adv7511_calc_cts_n(adv7511->f_tmds, adv7511->f_audio, &cts, &n);

 regmap_write(adv7511->regmap, ADV7511_REG_N0, (n >> 16) & 0xf);
 regmap_write(adv7511->regmap, ADV7511_REG_N1, (n >> 8) & 0xff);
 regmap_write(adv7511->regmap, ADV7511_REG_N2, n & 0xff);

 regmap_write(adv7511->regmap, ADV7511_REG_CTS_MANUAL0,
       (cts >> 16) & 0xf);
 regmap_write(adv7511->regmap, ADV7511_REG_CTS_MANUAL1,
       (cts >> 8) & 0xff);
 regmap_write(adv7511->regmap, ADV7511_REG_CTS_MANUAL2,
       cts & 0xff);

 return 0;
}
