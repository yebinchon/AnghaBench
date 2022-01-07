
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tda998x_priv {TYPE_1__* hdmi; int cec_addr; } ;
struct i2c_msg {int len; int * buf; int addr; } ;
struct TYPE_2__ {int dev; int adapter; } ;


 int dev_err (int *,char*,int,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static void
cec_write(struct tda998x_priv *priv, u16 addr, u8 val)
{
 u8 buf[] = {addr, val};
 struct i2c_msg msg = {
  .addr = priv->cec_addr,
  .len = 2,
  .buf = buf,
 };
 int ret;

 ret = i2c_transfer(priv->hdmi->adapter, &msg, 1);
 if (ret < 0)
  dev_err(&priv->hdmi->dev, "Error %d writing to cec:0x%x\n",
   ret, addr);
}
