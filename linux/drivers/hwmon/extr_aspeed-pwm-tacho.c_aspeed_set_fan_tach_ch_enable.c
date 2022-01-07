
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int ASPEED_PTCR_CTRL ;
 int ASPEED_PTCR_CTRL_FAN_NUM_EN (int ) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void aspeed_set_fan_tach_ch_enable(struct regmap *regmap, u8 fan_tach_ch,
       bool enable)
{
 regmap_update_bits(regmap, ASPEED_PTCR_CTRL,
      ASPEED_PTCR_CTRL_FAN_NUM_EN(fan_tach_ch),
      enable ?
      ASPEED_PTCR_CTRL_FAN_NUM_EN(fan_tach_ch) : 0);
}
