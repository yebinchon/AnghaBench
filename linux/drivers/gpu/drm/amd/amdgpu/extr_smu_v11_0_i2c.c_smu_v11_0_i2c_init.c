
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int DRM_WARN (char*) ;
 int smu_v11_0_i2c_activity_done (struct i2c_adapter*) ;
 int smu_v11_0_i2c_configure (struct i2c_adapter*) ;
 int smu_v11_0_i2c_enable (struct i2c_adapter*,int) ;
 int smu_v11_0_i2c_set_clock (struct i2c_adapter*) ;
 int smu_v11_0_i2c_set_clock_gating (struct i2c_adapter*,int) ;

__attribute__((used)) static void smu_v11_0_i2c_init(struct i2c_adapter *control)
{

 smu_v11_0_i2c_set_clock_gating(control, 0);

 if (!smu_v11_0_i2c_activity_done(control))
  DRM_WARN("I2C busy !");


 smu_v11_0_i2c_enable(control, 0);


 smu_v11_0_i2c_configure(control);


 smu_v11_0_i2c_set_clock(control);

}
