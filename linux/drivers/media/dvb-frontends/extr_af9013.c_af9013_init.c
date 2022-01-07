
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int u64 ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct af9013_state* demodulator_priv; } ;
struct af9013_state {unsigned int* api_version; int clk; int tuner; int ts_output_pin; int ts_mode; int first_tune; int regmap; struct i2c_client* client; } ;
struct af9013_reg_mask_val {int reg; int mask; int val; } ;
 int ARRAY_SIZE (struct af9013_reg_mask_val*) ;
 int EINVAL ;
 struct af9013_reg_mask_val* demod_init_tab ;
 int dev_dbg (int *,char*,...) ;
 unsigned int div_u64 (int,int) ;
 int regmap_bulk_write (int ,int,unsigned int*,int) ;
 int regmap_update_bits (int ,int,int,int) ;
 struct af9013_reg_mask_val* tuner_init_tab_env77h11d5 ;
 struct af9013_reg_mask_val* tuner_init_tab_mc44s803 ;
 struct af9013_reg_mask_val* tuner_init_tab_mt2060 ;
 struct af9013_reg_mask_val* tuner_init_tab_mt2060_2 ;
 struct af9013_reg_mask_val* tuner_init_tab_mxl5003d ;
 struct af9013_reg_mask_val* tuner_init_tab_mxl5005 ;
 struct af9013_reg_mask_val* tuner_init_tab_qt1010 ;
 struct af9013_reg_mask_val* tuner_init_tab_tda18271 ;
 struct af9013_reg_mask_val* tuner_init_tab_unknown ;

__attribute__((used)) static int af9013_init(struct dvb_frontend *fe)
{
 struct af9013_state *state = fe->demodulator_priv;
 struct i2c_client *client = state->client;
 int ret, i, len;
 unsigned int utmp;
 u8 buf[3];
 const struct af9013_reg_mask_val *tab;

 dev_dbg(&client->dev, "\n");


 ret = regmap_update_bits(state->regmap, 0xd73a, 0x08, 0x00);
 if (ret)
  goto err;


 ret = regmap_update_bits(state->regmap, 0xd417, 0x02, 0x00);
 if (ret)
  goto err;


 ret = regmap_update_bits(state->regmap, 0xd417, 0x10, 0x00);
 if (ret)
  goto err;


 ret = regmap_bulk_write(state->regmap, 0x9bf2, state->api_version, 4);
 if (ret)
  goto err;


 switch (state->clk) {
 case 28800000:
  utmp = 0;
  break;
 case 20480000:
  utmp = 1;
  break;
 case 28000000:
  utmp = 2;
  break;
 case 25000000:
  utmp = 3;
  break;
 default:
  ret = -EINVAL;
  goto err;
 }

 ret = regmap_update_bits(state->regmap, 0x9bd2, 0x0f, utmp);
 if (ret)
  goto err;

 utmp = div_u64((u64)state->clk * 0x80000, 1000000);
 buf[0] = (utmp >> 0) & 0xff;
 buf[1] = (utmp >> 8) & 0xff;
 buf[2] = (utmp >> 16) & 0xff;
 ret = regmap_bulk_write(state->regmap, 0xd180, buf, 3);
 if (ret)
  goto err;


 dev_dbg(&client->dev, "load demod core settings\n");
 len = ARRAY_SIZE(demod_init_tab);
 tab = demod_init_tab;
 for (i = 0; i < len; i++) {
  ret = regmap_update_bits(state->regmap, tab[i].reg, tab[i].mask,
      tab[i].val);
  if (ret)
   goto err;
 }


 dev_dbg(&client->dev, "load tuner specific settings\n");
 switch (state->tuner) {
 case 136:
  len = ARRAY_SIZE(tuner_init_tab_mxl5003d);
  tab = tuner_init_tab_mxl5003d;
  break;
 case 135:
 case 134:
 case 133:
  len = ARRAY_SIZE(tuner_init_tab_mxl5005);
  tab = tuner_init_tab_mxl5005;
  break;
 case 140:
  len = ARRAY_SIZE(tuner_init_tab_env77h11d5);
  tab = tuner_init_tab_env77h11d5;
  break;
 case 138:
  len = ARRAY_SIZE(tuner_init_tab_mt2060);
  tab = tuner_init_tab_mt2060;
  break;
 case 139:
  len = ARRAY_SIZE(tuner_init_tab_mc44s803);
  tab = tuner_init_tab_mc44s803;
  break;
 case 132:
 case 131:
  len = ARRAY_SIZE(tuner_init_tab_qt1010);
  tab = tuner_init_tab_qt1010;
  break;
 case 137:
  len = ARRAY_SIZE(tuner_init_tab_mt2060_2);
  tab = tuner_init_tab_mt2060_2;
  break;
 case 129:
 case 130:
  len = ARRAY_SIZE(tuner_init_tab_tda18271);
  tab = tuner_init_tab_tda18271;
  break;
 case 128:
 default:
  len = ARRAY_SIZE(tuner_init_tab_unknown);
  tab = tuner_init_tab_unknown;
  break;
 }

 for (i = 0; i < len; i++) {
  ret = regmap_update_bits(state->regmap, tab[i].reg, tab[i].mask,
      tab[i].val);
  if (ret)
   goto err;
 }


 if (state->ts_output_pin == 7)
  utmp = 1 << 3 | state->ts_mode << 1;
 else
  utmp = 0 << 3 | state->ts_mode << 1;
 ret = regmap_update_bits(state->regmap, 0xd500, 0x0e, utmp);
 if (ret)
  goto err;


 ret = regmap_update_bits(state->regmap, 0xd730, 0x01, 0x01);
 if (ret)
  goto err;

 state->first_tune = 1;

 return 0;
err:
 dev_dbg(&client->dev, "failed %d\n", ret);
 return ret;
}
