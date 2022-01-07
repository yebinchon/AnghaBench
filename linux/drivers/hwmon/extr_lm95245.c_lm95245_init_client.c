
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm95245_data {int regmap; } ;


 int CFG_STOP ;
 int LM95245_REG_RW_CONFIG1 ;
 int lm95245_read_conversion_rate (struct lm95245_data*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int lm95245_init_client(struct lm95245_data *data)
{
 int ret;

 ret = lm95245_read_conversion_rate(data);
 if (ret < 0)
  return ret;

 return regmap_update_bits(data->regmap, LM95245_REG_RW_CONFIG1,
      CFG_STOP, 0);
}
