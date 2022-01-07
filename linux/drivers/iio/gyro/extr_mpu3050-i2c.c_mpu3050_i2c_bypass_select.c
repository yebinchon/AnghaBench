
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpu3050 {int dev; } ;
struct i2c_mux_core {int dummy; } ;


 struct mpu3050* i2c_mux_priv (struct i2c_mux_core*) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int mpu3050_i2c_bypass_select(struct i2c_mux_core *mux, u32 chan_id)
{
 struct mpu3050 *mpu3050 = i2c_mux_priv(mux);


 pm_runtime_get_sync(mpu3050->dev);
 return 0;
}
