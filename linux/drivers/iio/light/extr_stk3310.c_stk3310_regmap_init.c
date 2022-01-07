
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk3310_data {struct regmap* regmap; struct i2c_client* client; } ;
struct regmap {int dummy; } ;
struct i2c_client {int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int STK3310_REGFIELD (int ) ;
 int als_gain ;
 int als_it ;
 int dev_err (int *,char*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int flag_nf ;
 int flag_psint ;
 int int_ps ;
 int ps_gain ;
 int ps_it ;
 int state ;
 int stk3310_regmap_config ;

__attribute__((used)) static int stk3310_regmap_init(struct stk3310_data *data)
{
 struct regmap *regmap;
 struct i2c_client *client;

 client = data->client;
 regmap = devm_regmap_init_i2c(client, &stk3310_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "regmap initialization failed.\n");
  return PTR_ERR(regmap);
 }
 data->regmap = regmap;

 STK3310_REGFIELD(state);
 STK3310_REGFIELD(als_gain);
 STK3310_REGFIELD(ps_gain);
 STK3310_REGFIELD(als_it);
 STK3310_REGFIELD(ps_it);
 STK3310_REGFIELD(int_ps);
 STK3310_REGFIELD(flag_psint);
 STK3310_REGFIELD(flag_nf);

 return 0;
}
