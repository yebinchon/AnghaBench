
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_spec_values {int dummy; } ;


 struct i2c_spec_values const fast_mode_plus_spec ;
 struct i2c_spec_values const fast_mode_spec ;
 struct i2c_spec_values const standard_mode_spec ;

__attribute__((used)) static const struct i2c_spec_values *rk3x_i2c_get_spec(unsigned int speed)
{
 if (speed <= 100000)
  return &standard_mode_spec;
 else if (speed <= 400000)
  return &fast_mode_spec;
 else
  return &fast_mode_plus_spec;
}
