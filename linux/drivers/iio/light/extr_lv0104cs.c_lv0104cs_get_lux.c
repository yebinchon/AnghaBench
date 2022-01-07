
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct lv0104cs_private {size_t scale; size_t int_time; int client; } ;
struct TYPE_4__ {int regval; } ;
struct TYPE_3__ {int regval; } ;


 int EINVAL ;



 int LV0104CS_REGVAL_MEASURE ;
 int LV0104CS_REGVAL_SLEEP ;




 TYPE_2__* lv0104cs_int_times ;
 int lv0104cs_read_adc (int ,int*) ;
 TYPE_1__* lv0104cs_scales ;
 int lv0104cs_write_reg (int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static int lv0104cs_get_lux(struct lv0104cs_private *lv0104cs,
    int *val, int *val2)
{
 u8 regval = LV0104CS_REGVAL_MEASURE;
 u16 adc_output;
 int ret;

 regval |= lv0104cs_scales[lv0104cs->scale].regval;
 regval |= lv0104cs_int_times[lv0104cs->int_time].regval;
 ret = lv0104cs_write_reg(lv0104cs->client, regval);
 if (ret)
  return ret;


 switch (lv0104cs->int_time) {
 case 133:
  msleep(50);
  break;

 case 134:
  msleep(150);
  break;

 case 132:
  msleep(250);
  break;

 default:
  return -EINVAL;
 }

 ret = lv0104cs_read_adc(lv0104cs->client, &adc_output);
 if (ret)
  return ret;

 ret = lv0104cs_write_reg(lv0104cs->client, LV0104CS_REGVAL_SLEEP);
 if (ret)
  return ret;


 switch (lv0104cs->scale) {
 case 131:
  *val = adc_output * 4;
  *val2 = 0;
  return 0;

 case 130:
  *val = adc_output;
  *val2 = 0;
  return 0;

 case 129:
  *val = adc_output / 2;
  *val2 = (adc_output % 2) * 500000;
  return 0;

 case 128:
  *val = adc_output / 8;
  *val2 = (adc_output % 8) * 125000;
  return 0;

 default:
  return -EINVAL;
 }
}
