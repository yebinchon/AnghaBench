
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83627ehf_data {int* fan_div; int has_fan; } ;


 int NCT6775_REG_FANDIV1 ;
 int NCT6775_REG_FANDIV2 ;
 int w83627ehf_read_value (struct w83627ehf_data*,int ) ;

__attribute__((used)) static void nct6775_update_fan_div(struct w83627ehf_data *data)
{
 u8 i;

 i = w83627ehf_read_value(data, NCT6775_REG_FANDIV1);
 data->fan_div[0] = i & 0x7;
 data->fan_div[1] = (i & 0x70) >> 4;
 i = w83627ehf_read_value(data, NCT6775_REG_FANDIV2);
 data->fan_div[2] = i & 0x7;
 if (data->has_fan & (1<<3))
  data->fan_div[3] = (i & 0x70) >> 4;
}
