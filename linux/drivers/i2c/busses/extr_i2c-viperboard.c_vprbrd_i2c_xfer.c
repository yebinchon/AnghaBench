
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vprbrd_i2c_status {int dummy; } ;
struct vprbrd_i2c_addr_msg {int unknown2; int unknown3; int unknown1; void* len; int addr; void* cmd; } ;
struct vprbrd {int lock; int usb_dev; scalar_t__ buf; } ;
struct i2c_msg {int flags; int len; int addr; } ;
struct i2c_adapter {int dev; scalar_t__ algo_data; } ;


 int I2C_M_RD ;
 void* VPRBRD_I2C_CMD_ADDR ;
 void* cpu_to_le16 (int ) ;
 int dev_dbg (int *,char*,int,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vprbrd_i2c_addr (int ,struct vprbrd_i2c_addr_msg*) ;
 int vprbrd_i2c_read (struct vprbrd*,struct i2c_msg*) ;
 int vprbrd_i2c_status (struct i2c_adapter*,struct vprbrd_i2c_status*,int) ;
 int vprbrd_i2c_write (struct vprbrd*,struct i2c_msg*) ;

__attribute__((used)) static int vprbrd_i2c_xfer(struct i2c_adapter *i2c, struct i2c_msg *msgs,
  int num)
{
 struct i2c_msg *pmsg;
 int i, ret,
  error = 0;
 struct vprbrd *vb = (struct vprbrd *)i2c->algo_data;
 struct vprbrd_i2c_addr_msg *amsg =
  (struct vprbrd_i2c_addr_msg *)vb->buf;
 struct vprbrd_i2c_status *smsg = (struct vprbrd_i2c_status *)vb->buf;

 dev_dbg(&i2c->dev, "master xfer %d messages:\n", num);

 for (i = 0 ; i < num ; i++) {
  pmsg = &msgs[i];

  dev_dbg(&i2c->dev,
   "  %d: %s (flags %d) %d bytes to 0x%02x\n",
   i, pmsg->flags & I2C_M_RD ? "read" : "write",
   pmsg->flags, pmsg->len, pmsg->addr);

  mutex_lock(&vb->lock);

  if (pmsg->flags & I2C_M_RD) {

   amsg->cmd = VPRBRD_I2C_CMD_ADDR;
   amsg->unknown2 = 0x00;
   amsg->unknown3 = 0x00;
   amsg->addr = pmsg->addr;
   amsg->unknown1 = 0x01;
   amsg->len = cpu_to_le16(pmsg->len);

   ret = vprbrd_i2c_addr(vb->usb_dev, amsg);
   if (ret < 0)
    error = ret;

   ret = vprbrd_i2c_read(vb, pmsg);
   if (ret < 0)
    error = ret;

   ret = vprbrd_i2c_status(i2c, smsg, error);
   if (ret < 0)
    error = ret;

   if (error < 0)
    goto error;
  } else {

   ret = vprbrd_i2c_write(vb, pmsg);

   amsg->cmd = VPRBRD_I2C_CMD_ADDR;
   amsg->unknown2 = 0x00;
   amsg->unknown3 = 0x00;
   amsg->addr = pmsg->addr;
   amsg->unknown1 = 0x00;
   amsg->len = cpu_to_le16(pmsg->len);

   ret = vprbrd_i2c_addr(vb->usb_dev, amsg);
   if (ret < 0)
    error = ret;

   ret = vprbrd_i2c_status(i2c, smsg, error);
   if (ret < 0)
    error = ret;

   if (error < 0)
    goto error;
  }
  mutex_unlock(&vb->lock);
 }
 return num;
error:
 mutex_unlock(&vb->lock);
 return error;
}
