
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_mux_core {int num_adapters; } ;


 int i2c_mux_pinctrl_select (struct i2c_mux_core*,int ) ;

__attribute__((used)) static int i2c_mux_pinctrl_deselect(struct i2c_mux_core *muxc, u32 chan)
{
 return i2c_mux_pinctrl_select(muxc, muxc->num_adapters);
}
