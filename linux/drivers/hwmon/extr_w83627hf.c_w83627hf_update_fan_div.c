
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627hf_data {int* fan_div; scalar_t__ type; } ;


 int W83781D_REG_PIN ;
 int W83781D_REG_VBAT ;
 int W83781D_REG_VID_FANDIV ;
 int w83627hf_read_value (struct w83627hf_data*,int ) ;
 scalar_t__ w83697hf ;

__attribute__((used)) static void w83627hf_update_fan_div(struct w83627hf_data *data)
{
 int reg;

 reg = w83627hf_read_value(data, W83781D_REG_VID_FANDIV);
 data->fan_div[0] = (reg >> 4) & 0x03;
 data->fan_div[1] = (reg >> 6) & 0x03;
 if (data->type != w83697hf) {
  data->fan_div[2] = (w83627hf_read_value(data,
           W83781D_REG_PIN) >> 6) & 0x03;
 }
 reg = w83627hf_read_value(data, W83781D_REG_VBAT);
 data->fan_div[0] |= (reg >> 3) & 0x04;
 data->fan_div[1] |= (reg >> 4) & 0x04;
 if (data->type != w83697hf)
  data->fan_div[2] |= (reg >> 5) & 0x04;
}
