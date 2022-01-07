
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osif_priv {scalar_t__ status; } ;
struct i2c_msg {int flags; scalar_t__* buf; int len; int addr; } ;
struct i2c_adapter {int dev; struct osif_priv* algo_data; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int OSIFI2C_READ ;
 int OSIFI2C_STATUS ;
 int OSIFI2C_STOP ;
 int OSIFI2C_WRITE ;
 scalar_t__ STATUS_ADDRESS_ACK ;
 int dev_dbg (int *,char*,scalar_t__) ;
 int dev_err (int *,char*) ;
 int osif_usb_read (struct i2c_adapter*,int ,int,int ,scalar_t__*,int) ;
 int osif_usb_write (struct i2c_adapter*,int ,int,int ,scalar_t__*,int) ;

__attribute__((used)) static int osif_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
    int num)
{
 struct osif_priv *priv = adapter->algo_data;
 struct i2c_msg *pmsg;
 int ret;
 int i;

 for (i = 0; i < num; i++) {
  pmsg = &msgs[i];

  if (pmsg->flags & I2C_M_RD) {
   ret = osif_usb_read(adapter, OSIFI2C_READ,
         pmsg->flags, pmsg->addr,
         pmsg->buf, pmsg->len);
   if (ret != pmsg->len) {
    dev_err(&adapter->dev, "failure reading data\n");
    return -EREMOTEIO;
   }
  } else {
   ret = osif_usb_write(adapter, OSIFI2C_WRITE,
          pmsg->flags, pmsg->addr,
          pmsg->buf, pmsg->len);
   if (ret != pmsg->len) {
    dev_err(&adapter->dev, "failure writing data\n");
    return -EREMOTEIO;
   }
  }

  ret = osif_usb_read(adapter, OSIFI2C_STOP, 0, 0, ((void*)0), 0);
  if (ret) {
   dev_err(&adapter->dev, "failure sending STOP\n");
   return -EREMOTEIO;
  }


  ret = osif_usb_read(adapter, OSIFI2C_STATUS, 0, 0,
        &priv->status, 1);
  if (ret != 1) {
   dev_err(&adapter->dev, "failure reading status\n");
   return -EREMOTEIO;
  }

  if (priv->status != STATUS_ADDRESS_ACK) {
   dev_dbg(&adapter->dev, "status = %d\n", priv->status);
   return -EREMOTEIO;
  }
 }

 return i;
}
