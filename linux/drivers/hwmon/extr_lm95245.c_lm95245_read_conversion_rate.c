
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm95245_data {int interval; int regmap; } ;


 int LM95245_REG_RW_CONVERS_RATE ;




 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int lm95245_read_conversion_rate(struct lm95245_data *data)
{
 unsigned int rate;
 int ret;

 ret = regmap_read(data->regmap, LM95245_REG_RW_CONVERS_RATE, &rate);
 if (ret < 0)
  return ret;

 switch (rate) {
 case 131:
  data->interval = 63;
  break;
 case 130:
  data->interval = 364;
  break;
 case 129:
  data->interval = 1000;
  break;
 case 128:
 default:
  data->interval = 2500;
  break;
 }
 return 0;
}
