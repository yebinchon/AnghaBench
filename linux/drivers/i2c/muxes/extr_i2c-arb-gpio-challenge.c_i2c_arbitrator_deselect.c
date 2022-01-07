
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_mux_core {int dummy; } ;
struct i2c_arbitrator_data {int slew_delay_us; int our_gpio; } ;


 int gpiod_set_value (int ,int ) ;
 struct i2c_arbitrator_data* i2c_mux_priv (struct i2c_mux_core*) ;
 int udelay (int ) ;

__attribute__((used)) static int i2c_arbitrator_deselect(struct i2c_mux_core *muxc, u32 chan)
{
 const struct i2c_arbitrator_data *arb = i2c_mux_priv(muxc);


 gpiod_set_value(arb->our_gpio, 0);
 udelay(arb->slew_delay_us);

 return 0;
}
