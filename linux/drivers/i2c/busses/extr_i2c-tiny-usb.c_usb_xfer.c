
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int len; unsigned char* buf; int addr; } ;
struct i2c_adapter {int dev; } ;


 int CMD_GET_STATUS ;
 int CMD_I2C_IO ;
 int CMD_I2C_IO_BEGIN ;
 int CMD_I2C_IO_END ;
 int ENOMEM ;
 int EREMOTEIO ;
 int GFP_KERNEL ;
 int I2C_M_RD ;
 unsigned char STATUS_ADDRESS_NAK ;
 int dev_dbg (int *,char*,unsigned char,...) ;
 int dev_err (int *,char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int usb_read (struct i2c_adapter*,int,int,int ,unsigned char*,int) ;
 int usb_write (struct i2c_adapter*,int,int,int ,unsigned char*,int) ;

__attribute__((used)) static int usb_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
{
 unsigned char *pstatus;
 struct i2c_msg *pmsg;
 int i, ret;

 dev_dbg(&adapter->dev, "master xfer %d messages:\n", num);

 pstatus = kmalloc(sizeof(*pstatus), GFP_KERNEL);
 if (!pstatus)
  return -ENOMEM;

 for (i = 0 ; i < num ; i++) {
  int cmd = CMD_I2C_IO;

  if (i == 0)
   cmd |= CMD_I2C_IO_BEGIN;

  if (i == num-1)
   cmd |= CMD_I2C_IO_END;

  pmsg = &msgs[i];

  dev_dbg(&adapter->dev,
   "  %d: %s (flags %d) %d bytes to 0x%02x\n",
   i, pmsg->flags & I2C_M_RD ? "read" : "write",
   pmsg->flags, pmsg->len, pmsg->addr);


  if (pmsg->flags & I2C_M_RD) {

   if (usb_read(adapter, cmd,
         pmsg->flags, pmsg->addr,
         pmsg->buf, pmsg->len) != pmsg->len) {
    dev_err(&adapter->dev,
     "failure reading data\n");
    ret = -EREMOTEIO;
    goto out;
   }
  } else {

   if (usb_write(adapter, cmd,
          pmsg->flags, pmsg->addr,
          pmsg->buf, pmsg->len) != pmsg->len) {
    dev_err(&adapter->dev,
     "failure writing data\n");
    ret = -EREMOTEIO;
    goto out;
   }
  }


  if (usb_read(adapter, CMD_GET_STATUS, 0, 0, pstatus, 1) != 1) {
   dev_err(&adapter->dev, "failure reading status\n");
   ret = -EREMOTEIO;
   goto out;
  }

  dev_dbg(&adapter->dev, "  status = %d\n", *pstatus);
  if (*pstatus == STATUS_ADDRESS_NAK) {
   ret = -EREMOTEIO;
   goto out;
  }
 }

 ret = i;
out:
 kfree(pstatus);
 return ret;
}
