
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via686a_data {int* fan_div; } ;


 int VIA686A_REG_FANDIV ;
 int via686a_read_value (struct via686a_data*,int ) ;

__attribute__((used)) static void via686a_update_fan_div(struct via686a_data *data)
{
 int reg = via686a_read_value(data, VIA686A_REG_FANDIV);
 data->fan_div[0] = (reg >> 4) & 0x03;
 data->fan_div[1] = reg >> 6;
}
