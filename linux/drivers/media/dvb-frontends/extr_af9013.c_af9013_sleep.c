
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dvb_frontend {struct af9013_state* demodulator_priv; } ;
struct af9013_state {int regmap; struct i2c_client* client; } ;


 int ETIMEDOUT ;
 int dev_dbg (int *,char*,...) ;
 int regmap_read_poll_timeout (int ,int,unsigned int,unsigned int,int,int) ;
 int regmap_update_bits (int ,int,int,int) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int af9013_sleep(struct dvb_frontend *fe)
{
 struct af9013_state *state = fe->demodulator_priv;
 struct i2c_client *client = state->client;
 int ret;
 unsigned int utmp;

 dev_dbg(&client->dev, "\n");


 ret = regmap_update_bits(state->regmap, 0xd730, 0x01, 0x00);
 if (ret)
  goto err;


 ret = regmap_update_bits(state->regmap, 0xd417, 0x10, 0x10);
 if (ret)
  goto err;


 ret = regmap_write(state->regmap, 0xaeff, 0x01);
 if (ret)
  goto err;


 ret = regmap_read_poll_timeout(state->regmap, 0xd417, utmp,
           (utmp >> 1) & 0x01, 5000, 1000000);
 if (ret)
  goto err;

 if (!((utmp >> 1) & 0x01)) {
  ret = -ETIMEDOUT;
  goto err;
 }


 ret = regmap_update_bits(state->regmap, 0xd73a, 0x08, 0x08);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed %d\n", ret);
 return ret;
}
