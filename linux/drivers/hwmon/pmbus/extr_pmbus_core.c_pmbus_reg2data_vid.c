
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmbus_sensor {long data; } ;
struct pmbus_data {TYPE_1__* info; } ;
struct TYPE_2__ {int vrm_version; } ;


 long DIV_ROUND_CLOSEST (int,int) ;




__attribute__((used)) static long pmbus_reg2data_vid(struct pmbus_data *data,
          struct pmbus_sensor *sensor)
{
 long val = sensor->data;
 long rv = 0;

 switch (data->info->vrm_version) {
 case 130:
  if (val >= 0x02 && val <= 0xb2)
   rv = DIV_ROUND_CLOSEST(160000 - (val - 2) * 625, 100);
  break;
 case 129:
  if (val >= 0x01)
   rv = 250 + (val - 1) * 5;
  break;
 case 128:
  if (val >= 0x01)
   rv = 500 + (val - 1) * 10;
  break;
 }
 return rv;
}
