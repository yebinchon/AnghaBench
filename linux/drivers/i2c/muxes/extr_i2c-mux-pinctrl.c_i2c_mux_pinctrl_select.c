
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct i2c_mux_pinctrl {int * states; int pinctrl; } ;
struct i2c_mux_core {int dummy; } ;


 struct i2c_mux_pinctrl* i2c_mux_priv (struct i2c_mux_core*) ;
 int pinctrl_select_state (int ,int ) ;

__attribute__((used)) static int i2c_mux_pinctrl_select(struct i2c_mux_core *muxc, u32 chan)
{
 struct i2c_mux_pinctrl *mux = i2c_mux_priv(muxc);

 return pinctrl_select_state(mux->pinctrl, mux->states[chan]);
}
