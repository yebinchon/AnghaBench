
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9150_gpadc {int dummy; } ;
 int IIO_VAL_INT ;
 int da9150_gpadc_gpio_6v_voltage_now (int) ;
 int da9150_gpadc_ibus_current_avg (int) ;
 int da9150_gpadc_read_adc (struct da9150_gpadc*,int) ;
 int da9150_gpadc_vbus_21v_voltage_now (int) ;
 int da9150_gpadc_vsys_6v_voltage_now (int) ;

__attribute__((used)) static int da9150_gpadc_read_processed(struct da9150_gpadc *gpadc, int channel,
           int hw_chan, int *val)
{
 int raw_val;

 raw_val = da9150_gpadc_read_adc(gpadc, hw_chan);
 if (raw_val < 0)
  return raw_val;

 switch (channel) {
 case 134:
 case 133:
 case 132:
 case 131:
  *val = da9150_gpadc_gpio_6v_voltage_now(raw_val);
  break;
 case 130:
  *val = da9150_gpadc_ibus_current_avg(raw_val);
  break;
 case 129:
  *val = da9150_gpadc_vbus_21v_voltage_now(raw_val);
  break;
 case 128:
  *val = da9150_gpadc_vsys_6v_voltage_now(raw_val);
  break;
 default:

  *val = raw_val;
  break;
 }

 return IIO_VAL_INT;
}
