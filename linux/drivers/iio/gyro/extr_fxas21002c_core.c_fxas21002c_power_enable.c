
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int vdd; int vddio; } ;


 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int fxas21002c_power_enable(struct fxas21002c_data *data)
{
 int ret;

 ret = regulator_enable(data->vdd);
 if (ret < 0)
  return ret;

 ret = regulator_enable(data->vddio);
 if (ret < 0) {
  regulator_disable(data->vdd);
  return ret;
 }

 return 0;
}
