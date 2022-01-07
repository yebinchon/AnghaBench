
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83627ehf_data {int* fan_div; } ;


 int NCT6775_REG_FANDIV1 ;
 int NCT6775_REG_FANDIV2 ;
 int w83627ehf_read_value (struct w83627ehf_data*,int ) ;
 int w83627ehf_write_value (struct w83627ehf_data*,int ,int) ;

__attribute__((used)) static void nct6775_write_fan_div(struct w83627ehf_data *data, int nr)
{
 u8 reg;

 switch (nr) {
 case 0:
  reg = (w83627ehf_read_value(data, NCT6775_REG_FANDIV1) & 0x70)
      | (data->fan_div[0] & 0x7);
  w83627ehf_write_value(data, NCT6775_REG_FANDIV1, reg);
  break;
 case 1:
  reg = (w83627ehf_read_value(data, NCT6775_REG_FANDIV1) & 0x7)
      | ((data->fan_div[1] << 4) & 0x70);
  w83627ehf_write_value(data, NCT6775_REG_FANDIV1, reg);
  break;
 case 2:
  reg = (w83627ehf_read_value(data, NCT6775_REG_FANDIV2) & 0x70)
      | (data->fan_div[2] & 0x7);
  w83627ehf_write_value(data, NCT6775_REG_FANDIV2, reg);
  break;
 case 3:
  reg = (w83627ehf_read_value(data, NCT6775_REG_FANDIV2) & 0x7)
      | ((data->fan_div[3] << 4) & 0x70);
  w83627ehf_write_value(data, NCT6775_REG_FANDIV2, reg);
  break;
 }
}
