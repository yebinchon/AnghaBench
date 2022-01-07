
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mux {int do_not_deselect; int control; } ;
struct i2c_mux_core {int dummy; } ;


 struct mux* i2c_mux_priv (struct i2c_mux_core*) ;
 int mux_control_select (int ,int ) ;

__attribute__((used)) static int i2c_mux_select(struct i2c_mux_core *muxc, u32 chan)
{
 struct mux *mux = i2c_mux_priv(muxc);
 int ret;

 ret = mux_control_select(mux->control, chan);
 mux->do_not_deselect = ret < 0;

 return ret;
}
