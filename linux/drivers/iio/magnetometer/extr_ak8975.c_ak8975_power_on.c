
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ak8975_data {TYPE_1__* client; int vid; int vdd; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*) ;
 int regulator_enable (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ak8975_power_on(const struct ak8975_data *data)
{
 int ret;

 ret = regulator_enable(data->vdd);
 if (ret) {
  dev_warn(&data->client->dev,
    "Failed to enable specified Vdd supply\n");
  return ret;
 }
 ret = regulator_enable(data->vid);
 if (ret) {
  dev_warn(&data->client->dev,
    "Failed to enable specified Vid supply\n");
  return ret;
 }





 usleep_range(500, 1000);
 return 0;
}
