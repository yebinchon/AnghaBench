
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct regmap {int dummy; } ;


 int ASPEED_PTCR_TACH_SOURCE ;
 int ASPEED_PTCR_TACH_SOURCE_EXT ;
 int TACH_PWM_SOURCE_BIT01 (int) ;
 int TACH_PWM_SOURCE_BIT2 (int) ;
 int TACH_PWM_SOURCE_MASK_BIT01 (int) ;
 int TACH_PWM_SOURCE_MASK_BIT2 (int) ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;

__attribute__((used)) static void aspeed_set_fan_tach_ch_source(struct regmap *regmap, u8 fan_tach_ch,
       u8 fan_tach_ch_source)
{
 u32 reg_value1 = ((fan_tach_ch_source & 0x3) <<
     TACH_PWM_SOURCE_BIT01(fan_tach_ch));
 u32 reg_value2 = (((fan_tach_ch_source & 0x4) >> 2) <<
     TACH_PWM_SOURCE_BIT2(fan_tach_ch));

 regmap_update_bits(regmap, ASPEED_PTCR_TACH_SOURCE,
      TACH_PWM_SOURCE_MASK_BIT01(fan_tach_ch),
      reg_value1);

 regmap_update_bits(regmap, ASPEED_PTCR_TACH_SOURCE_EXT,
      TACH_PWM_SOURCE_MASK_BIT2(fan_tach_ch),
      reg_value2);
}
