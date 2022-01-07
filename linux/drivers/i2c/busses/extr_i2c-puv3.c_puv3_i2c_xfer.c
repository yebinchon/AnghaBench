
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int addr; int flags; int len; unsigned char* buf; } ;
struct i2c_adapter {int dev; } ;


 int I2C_CON ;
 int I2C_CON_MASTER ;
 int I2C_CON_SLAVEDISABLE ;
 int I2C_CON_SPEED_STD ;
 int I2C_ENABLE ;
 int I2C_ENABLE_DISABLE ;
 int I2C_ENABLE_ENABLE ;
 int I2C_M_RD ;
 int I2C_TAR ;
 int I2C_TAR_PWIC ;
 int dev_dbg (int *,char*,...) ;
 int writel (int,int ) ;
 int xfer_read (struct i2c_adapter*,unsigned char*,int) ;
 int xfer_write (struct i2c_adapter*,unsigned char*,int) ;

__attribute__((used)) static int puv3_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *pmsg,
  int num)
{
 int i, ret;
 unsigned char swap;


 writel(I2C_ENABLE_DISABLE, I2C_ENABLE);


 writel(I2C_CON_MASTER | I2C_CON_SPEED_STD | I2C_CON_SLAVEDISABLE, I2C_CON);

 writel(pmsg->addr, I2C_TAR);


 writel(I2C_ENABLE_ENABLE, I2C_ENABLE);

 dev_dbg(&adap->dev, "puv3_i2c_xfer: processing %d messages:\n", num);

 for (i = 0; i < num; i++) {
  dev_dbg(&adap->dev, " #%d: %sing %d byte%s %s 0x%02x\n", i,
   pmsg->flags & I2C_M_RD ? "read" : "writ",
   pmsg->len, pmsg->len > 1 ? "s" : "",
   pmsg->flags & I2C_M_RD ? "from" : "to", pmsg->addr);

  if (pmsg->len && pmsg->buf) {
   if (pmsg->flags & I2C_M_RD)
    ret = xfer_read(adap, pmsg->buf, pmsg->len);
   else
    ret = xfer_write(adap, pmsg->buf, pmsg->len);

   if (ret)
    return ret;

  }
  dev_dbg(&adap->dev, "transfer complete\n");
  pmsg++;
 }


 if (pmsg->addr == I2C_TAR_PWIC) {
  swap = pmsg->buf[0];
  pmsg->buf[0] = pmsg->buf[1];
  pmsg->buf[1] = swap;
 }

 return i;
}
