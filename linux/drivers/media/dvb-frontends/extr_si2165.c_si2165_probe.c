
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_9__ {int name; } ;
struct TYPE_11__ {TYPE_2__ info; int * delsys; int * release; } ;
struct TYPE_10__ {TYPE_4__ ops; struct si2165_state* demodulator_priv; } ;
struct TYPE_8__ {scalar_t__ chip_mode; int ref_freq_hz; int inversion; int i2c_addr; } ;
struct si2165_state {scalar_t__ chip_revcode; scalar_t__ chip_type; int has_dvbt; int has_dvbc; TYPE_3__ fe; struct i2c_client* client; TYPE_1__ config; int regmap; } ;
struct si2165_platform_data {scalar_t__ chip_mode; int ref_freq_hz; TYPE_3__** fe; int inversion; } ;
struct regmap_config {int reg_bits; int val_bits; int max_register; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_12__ {struct si2165_platform_data* platform_data; } ;
struct i2c_client {TYPE_5__ dev; int addr; } ;
struct dvb_frontend_ops {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REG_CHIP_MODE ;
 int REG_CHIP_REVCODE ;
 int REV_CHIP_TYPE ;
 scalar_t__ SI2165_MODE_OFF ;
 int SYS_DVBC_ANNEX_A ;
 int SYS_DVBT ;
 int dev_dbg (TYPE_5__*,char*,int) ;
 int dev_err (TYPE_5__*,char*,int,...) ;
 int dev_info (TYPE_5__*,char*,char const*,char,int,char) ;
 int devm_regmap_init_i2c (struct i2c_client*,struct regmap_config const*) ;
 int i2c_set_clientdata (struct i2c_client*,struct si2165_state*) ;
 int kfree (struct si2165_state*) ;
 struct si2165_state* kzalloc (int,int ) ;
 int memcpy (TYPE_4__*,int *,int) ;
 int si2165_ops ;
 int si2165_readreg8 (struct si2165_state*,int ,scalar_t__*) ;
 int si2165_writereg8 (struct si2165_state*,int ,scalar_t__) ;
 int strlcat (int ,char const*,int) ;

__attribute__((used)) static int si2165_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct si2165_state *state = ((void*)0);
 struct si2165_platform_data *pdata = client->dev.platform_data;
 int n;
 int ret = 0;
 u8 val;
 char rev_char;
 const char *chip_name;
 static const struct regmap_config regmap_config = {
  .reg_bits = 16,
  .val_bits = 8,
  .max_register = 0x08ff,
 };


 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state) {
  ret = -ENOMEM;
  goto error;
 }


 state->regmap = devm_regmap_init_i2c(client, &regmap_config);
 if (IS_ERR(state->regmap)) {
  ret = PTR_ERR(state->regmap);
  goto error;
 }


 state->client = client;
 state->config.i2c_addr = client->addr;
 state->config.chip_mode = pdata->chip_mode;
 state->config.ref_freq_hz = pdata->ref_freq_hz;
 state->config.inversion = pdata->inversion;

 if (state->config.ref_freq_hz < 4000000 ||
     state->config.ref_freq_hz > 27000000) {
  dev_err(&state->client->dev, "ref_freq of %d Hz not supported by this driver\n",
   state->config.ref_freq_hz);
  ret = -EINVAL;
  goto error;
 }


 memcpy(&state->fe.ops, &si2165_ops,
        sizeof(struct dvb_frontend_ops));
 state->fe.ops.release = ((void*)0);
 state->fe.demodulator_priv = state;
 i2c_set_clientdata(client, state);


 ret = si2165_writereg8(state, REG_CHIP_MODE, state->config.chip_mode);
 if (ret < 0)
  goto nodev_error;

 ret = si2165_readreg8(state, REG_CHIP_MODE, &val);
 if (ret < 0)
  goto nodev_error;
 if (val != state->config.chip_mode)
  goto nodev_error;

 ret = si2165_readreg8(state, REG_CHIP_REVCODE, &state->chip_revcode);
 if (ret < 0)
  goto nodev_error;

 ret = si2165_readreg8(state, REV_CHIP_TYPE, &state->chip_type);
 if (ret < 0)
  goto nodev_error;


 ret = si2165_writereg8(state, REG_CHIP_MODE, SI2165_MODE_OFF);
 if (ret < 0)
  goto nodev_error;

 if (state->chip_revcode < 26)
  rev_char = 'A' + state->chip_revcode;
 else
  rev_char = '?';

 switch (state->chip_type) {
 case 0x06:
  chip_name = "Si2161";
  state->has_dvbt = 1;
  break;
 case 0x07:
  chip_name = "Si2165";
  state->has_dvbt = 1;
  state->has_dvbc = 1;
  break;
 default:
  dev_err(&state->client->dev, "Unsupported Silicon Labs chip (type %d, rev %d)\n",
   state->chip_type, state->chip_revcode);
  goto nodev_error;
 }

 dev_info(&state->client->dev,
   "Detected Silicon Labs %s-%c (type %d, rev %d)\n",
  chip_name, rev_char, state->chip_type,
  state->chip_revcode);

 strlcat(state->fe.ops.info.name, chip_name,
  sizeof(state->fe.ops.info.name));

 n = 0;
 if (state->has_dvbt) {
  state->fe.ops.delsys[n++] = SYS_DVBT;
  strlcat(state->fe.ops.info.name, " DVB-T",
   sizeof(state->fe.ops.info.name));
 }
 if (state->has_dvbc) {
  state->fe.ops.delsys[n++] = SYS_DVBC_ANNEX_A;
  strlcat(state->fe.ops.info.name, " DVB-C",
   sizeof(state->fe.ops.info.name));
 }


 *pdata->fe = &state->fe;

 return 0;

nodev_error:
 ret = -ENODEV;
error:
 kfree(state);
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
