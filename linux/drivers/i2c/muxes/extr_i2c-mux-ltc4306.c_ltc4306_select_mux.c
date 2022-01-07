
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ltc4306 {int regmap; } ;
struct i2c_mux_core {int dummy; } ;


 int BIT (scalar_t__) ;
 int LTC_REG_SWITCH ;
 int LTC_SWITCH_MASK ;
 struct ltc4306* i2c_mux_priv (struct i2c_mux_core*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int ltc4306_select_mux(struct i2c_mux_core *muxc, u32 chan)
{
 struct ltc4306 *data = i2c_mux_priv(muxc);

 return regmap_update_bits(data->regmap, LTC_REG_SWITCH,
      LTC_SWITCH_MASK, BIT(7 - chan));
}
