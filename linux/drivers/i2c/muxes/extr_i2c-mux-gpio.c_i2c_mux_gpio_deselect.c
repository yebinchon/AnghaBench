
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_mux_core {int dummy; } ;
struct TYPE_2__ {int idle; } ;
struct gpiomux {TYPE_1__ data; } ;


 int i2c_mux_gpio_set (struct gpiomux*,int ) ;
 struct gpiomux* i2c_mux_priv (struct i2c_mux_core*) ;

__attribute__((used)) static int i2c_mux_gpio_deselect(struct i2c_mux_core *muxc, u32 chan)
{
 struct gpiomux *mux = i2c_mux_priv(muxc);

 i2c_mux_gpio_set(mux, mux->data.idle);

 return 0;
}
