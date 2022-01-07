
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmpex_bmc_data {int sensor_major; } ;


 int PEX_MULT_LEN ;
 int PEX_SENSOR_TYPE_LEN ;
 int memcmp (char const*,int ,int ) ;
 int watt_sensor_sig ;

__attribute__((used)) static int power_sensor_multiplier(struct ibmpex_bmc_data *data,
       const char *sensor_id, int len)
{
 int i;

 if (data->sensor_major == 2)
  return 1000000;

 for (i = PEX_SENSOR_TYPE_LEN; i < len - 1; i++)
  if (!memcmp(&sensor_id[i], watt_sensor_sig, PEX_MULT_LEN))
   return 1000000;

 return 100000;
}
