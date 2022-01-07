
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int idle; scalar_t__ idle_in_use; } ;
struct regmux {TYPE_1__ data; } ;
struct i2c_mux_core {int dummy; } ;


 struct regmux* i2c_mux_priv (struct i2c_mux_core*) ;
 int i2c_mux_reg_set (struct regmux*,int ) ;

__attribute__((used)) static int i2c_mux_reg_deselect(struct i2c_mux_core *muxc, u32 chan)
{
 struct regmux *mux = i2c_mux_priv(muxc);

 if (mux->data.idle_in_use)
  return i2c_mux_reg_set(mux, mux->data.idle);

 return 0;
}
