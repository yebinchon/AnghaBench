
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak8975_data {int vdd; int vid; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void ak8975_power_off(const struct ak8975_data *data)
{
 regulator_disable(data->vid);
 regulator_disable(data->vdd);
}
