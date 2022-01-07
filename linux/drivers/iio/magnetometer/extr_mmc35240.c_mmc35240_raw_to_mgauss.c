
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc35240_data {size_t res; int* axis_coef; int* axis_scale; } ;
typedef int __le16 ;
struct TYPE_2__ {int* sens; int nfo; } ;





 int EINVAL ;
 int le16_to_cpu (int ) ;
 TYPE_1__* mmc35240_props_table ;

__attribute__((used)) static int mmc35240_raw_to_mgauss(struct mmc35240_data *data, int index,
      __le16 buf[], int *val)
{
 int raw[3];
 int sens[3];
 int nfo;

 raw[130] = le16_to_cpu(buf[130]);
 raw[129] = le16_to_cpu(buf[129]);
 raw[128] = le16_to_cpu(buf[128]);

 sens[130] = mmc35240_props_table[data->res].sens[130];
 sens[129] = mmc35240_props_table[data->res].sens[129];
 sens[128] = mmc35240_props_table[data->res].sens[128];

 nfo = mmc35240_props_table[data->res].nfo;

 switch (index) {
 case 130:
  *val = (raw[130] - nfo) * 1000 / sens[130];
  break;
 case 129:
  *val = (raw[129] - nfo) * 1000 / sens[129] -
   (raw[128] - nfo) * 1000 / sens[128];
  break;
 case 128:
  *val = (raw[129] - nfo) * 1000 / sens[129] +
   (raw[128] - nfo) * 1000 / sens[128];
  break;
 default:
  return -EINVAL;
 }

 *val = (*val) * data->axis_coef[index] / data->axis_scale[index];

 return 0;
}
