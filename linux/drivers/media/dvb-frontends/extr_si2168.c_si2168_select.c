
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct si2168_cmd {int dummy; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dev; } ;


 int cmd_init (struct si2168_cmd*,char*,int,int ) ;
 int dev_dbg (int *,char*,int) ;
 struct i2c_client* i2c_mux_priv (struct i2c_mux_core*) ;
 int si2168_cmd_execute (struct i2c_client*,struct si2168_cmd*) ;

__attribute__((used)) static int si2168_select(struct i2c_mux_core *muxc, u32 chan)
{
 struct i2c_client *client = i2c_mux_priv(muxc);
 int ret;
 struct si2168_cmd cmd;


 cmd_init(&cmd, "\xc0\x0d\x01", 3, 0);
 ret = si2168_cmd_execute(client, &cmd);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
