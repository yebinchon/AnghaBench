
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct jz4780_i2c {size_t cmd; TYPE_1__ adap; int * data_buf; int * cmd_buf; } ;


 int BIT (int) ;
 int JZ4780_I2C_TAR ;
 int dev_dbg (int *,char*,int,int ) ;
 int dev_err (int *,char*,size_t,...) ;
 int * jz4780_i2c_abrt_src ;
 int jz4780_i2c_readw (struct jz4780_i2c*,int ) ;

__attribute__((used)) static void jz4780_i2c_txabrt(struct jz4780_i2c *i2c, int src)
{
 int i;

 dev_err(&i2c->adap.dev, "txabrt: 0x%08x\n", src);
 dev_err(&i2c->adap.dev, "device addr=%x\n",
  jz4780_i2c_readw(i2c, JZ4780_I2C_TAR));
 dev_err(&i2c->adap.dev, "send cmd count:%d  %d\n",
  i2c->cmd, i2c->cmd_buf[i2c->cmd]);
 dev_err(&i2c->adap.dev, "receive data count:%d  %d\n",
  i2c->cmd, i2c->data_buf[i2c->cmd]);

 for (i = 0; i < 16; i++) {
  if (src & BIT(i))
   dev_dbg(&i2c->adap.dev, "I2C TXABRT[%d]=%s\n",
    i, jz4780_i2c_abrt_src[i]);
 }
}
