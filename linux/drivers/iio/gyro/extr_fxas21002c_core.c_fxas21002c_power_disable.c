
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int vddio; int vdd; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void fxas21002c_power_disable(struct fxas21002c_data *data)
{
 regulator_disable(data->vdd);
 regulator_disable(data->vddio);
}
