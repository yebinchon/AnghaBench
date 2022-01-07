
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mux {int control; scalar_t__ do_not_deselect; } ;
struct i2c_mux_core {int dummy; } ;


 struct mux* i2c_mux_priv (struct i2c_mux_core*) ;
 int mux_control_deselect (int ) ;

__attribute__((used)) static int i2c_mux_deselect(struct i2c_mux_core *muxc, u32 chan)
{
 struct mux *mux = i2c_mux_priv(muxc);

 if (mux->do_not_deselect)
  return 0;

 return mux_control_deselect(mux->control);
}
