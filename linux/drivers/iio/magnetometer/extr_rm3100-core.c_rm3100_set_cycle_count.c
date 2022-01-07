
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rm3100_data {int scale; int regmap; } ;


 scalar_t__ RM3100_REG_CC_X ;
 int regmap_write (int ,scalar_t__,int) ;

__attribute__((used)) static int rm3100_set_cycle_count(struct rm3100_data *data, int val)
{
 int ret;
 u8 i;

 for (i = 0; i < 3; i++) {
  ret = regmap_write(data->regmap, RM3100_REG_CC_X + 2 * i, val);
  if (ret < 0)
   return ret;
 }






 switch (val) {
 case 50:
  data->scale = 500;
  break;
 case 100:
  data->scale = 263;
  break;





 default:
  data->scale = 133;
 }

 return 0;
}
