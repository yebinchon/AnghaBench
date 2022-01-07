
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct af9013_state* demodulator_priv; } ;
struct af9013_state {int regmap; struct i2c_client* client; } ;


 int dev_dbg (int *,char*,int,...) ;
 int regmap_bulk_write (int ,int,int*,int) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int af9013_pid_filter(struct dvb_frontend *fe, u8 index, u16 pid,
        int onoff)
{
 struct af9013_state *state = fe->demodulator_priv;
 struct i2c_client *client = state->client;
 int ret;
 u8 buf[2];

 dev_dbg(&client->dev, "index %d, pid %04x, onoff %d\n",
  index, pid, onoff);

 if (pid > 0x1fff) {

  ret = 0;
  goto err;
 }

 buf[0] = (pid >> 0) & 0xff;
 buf[1] = (pid >> 8) & 0xff;
 ret = regmap_bulk_write(state->regmap, 0xd505, buf, 2);
 if (ret)
  goto err;
 ret = regmap_write(state->regmap, 0xd504, onoff << 5 | index << 0);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed %d\n", ret);
 return ret;
}
