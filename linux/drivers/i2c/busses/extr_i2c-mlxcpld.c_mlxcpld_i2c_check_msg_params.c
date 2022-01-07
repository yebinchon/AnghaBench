
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxcpld_i2c_priv {int dev; } ;
struct i2c_msg {int addr; int buf; } ;


 int EINVAL ;
 int dev_err (int ,char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlxcpld_i2c_check_msg_params(struct mlxcpld_i2c_priv *priv,
     struct i2c_msg *msgs, int num)
{
 int i;

 if (!num) {
  dev_err(priv->dev, "Incorrect 0 num of messages\n");
  return -EINVAL;
 }

 if (unlikely(msgs[0].addr > 0x7f)) {
  dev_err(priv->dev, "Invalid address 0x%03x\n",
   msgs[0].addr);
  return -EINVAL;
 }

 for (i = 0; i < num; ++i) {
  if (unlikely(!msgs[i].buf)) {
   dev_err(priv->dev, "Invalid buf in msg[%d]\n",
    i);
   return -EINVAL;
  }
  if (unlikely(msgs[0].addr != msgs[i].addr)) {
   dev_err(priv->dev, "Invalid addr in msg[%d]\n",
    i);
   return -EINVAL;
  }
 }

 return 0;
}
