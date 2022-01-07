
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u16 ;
struct max44000_data {int regmap; } ;
typedef int __be16 ;


 int MAX44000_ALSDATA_OVERFLOW ;
 int MAX44000_ALSTIM_SHIFT (int) ;
 int MAX44000_REG_ALS_DATA_HI ;
 int be16_to_cpu (int ) ;
 int max44000_read_alstim (struct max44000_data*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int max44000_read_alsval(struct max44000_data *data)
{
 u16 regval;
 __be16 val;
 int alstim, ret;

 ret = regmap_bulk_read(data->regmap, MAX44000_REG_ALS_DATA_HI,
          &val, sizeof(val));
 if (ret < 0)
  return ret;
 alstim = ret = max44000_read_alstim(data);
 if (ret < 0)
  return ret;

 regval = be16_to_cpu(val);
 if (regval & MAX44000_ALSDATA_OVERFLOW)
  return 0x3FFF;

 return regval << MAX44000_ALSTIM_SHIFT(alstim);
}
