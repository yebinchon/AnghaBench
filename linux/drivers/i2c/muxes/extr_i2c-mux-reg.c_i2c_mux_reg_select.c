
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmux {int dummy; } ;
struct i2c_mux_core {int dummy; } ;


 struct regmux* i2c_mux_priv (struct i2c_mux_core*) ;
 int i2c_mux_reg_set (struct regmux*,int ) ;

__attribute__((used)) static int i2c_mux_reg_select(struct i2c_mux_core *muxc, u32 chan)
{
 struct regmux *mux = i2c_mux_priv(muxc);

 return i2c_mux_reg_set(mux, chan);
}
