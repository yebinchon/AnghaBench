
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ltr501_data {int regmap; } ;


 int LTR501_ALS_CONTR ;
 int LTR501_PS_CONTR ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ltr501_write_contr(struct ltr501_data *data, u8 als_val, u8 ps_val)
{
 int ret;

 ret = regmap_write(data->regmap, LTR501_ALS_CONTR, als_val);
 if (ret < 0)
  return ret;

 return regmap_write(data->regmap, LTR501_PS_CONTR, ps_val);
}
