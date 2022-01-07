
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {unsigned short flags; int addr; } ;
struct i2c_algo_bit_data {int dummy; } ;
struct i2c_adapter {int retries; int dev; struct i2c_algo_bit_data* algo_data; } ;


 int EIO ;
 int ENXIO ;
 unsigned short I2C_M_IGNORE_NAK ;
 unsigned short I2C_M_RD ;
 unsigned short I2C_M_REV_DIR_ADDR ;
 unsigned short I2C_M_TEN ;
 int bit_dbg (int,int *,char*,...) ;
 int dev_err (int *,char*) ;
 unsigned char i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 int i2c_outb (struct i2c_adapter*,int) ;
 int i2c_repstart (struct i2c_algo_bit_data*) ;
 int try_address (struct i2c_adapter*,unsigned char,int) ;

__attribute__((used)) static int bit_doAddress(struct i2c_adapter *i2c_adap, struct i2c_msg *msg)
{
 unsigned short flags = msg->flags;
 unsigned short nak_ok = msg->flags & I2C_M_IGNORE_NAK;
 struct i2c_algo_bit_data *adap = i2c_adap->algo_data;

 unsigned char addr;
 int ret, retries;

 retries = nak_ok ? 0 : i2c_adap->retries;

 if (flags & I2C_M_TEN) {

  addr = 0xf0 | ((msg->addr >> 7) & 0x06);
  bit_dbg(2, &i2c_adap->dev, "addr0: %d\n", addr);

  ret = try_address(i2c_adap, addr, retries);
  if ((ret != 1) && !nak_ok) {
   dev_err(&i2c_adap->dev,
    "died at extended address code\n");
   return -ENXIO;
  }

  ret = i2c_outb(i2c_adap, msg->addr & 0xff);
  if ((ret != 1) && !nak_ok) {

   dev_err(&i2c_adap->dev, "died at 2nd address code\n");
   return -ENXIO;
  }
  if (flags & I2C_M_RD) {
   bit_dbg(3, &i2c_adap->dev,
    "emitting repeated start condition\n");
   i2c_repstart(adap);

   addr |= 0x01;
   ret = try_address(i2c_adap, addr, retries);
   if ((ret != 1) && !nak_ok) {
    dev_err(&i2c_adap->dev,
     "died at repeated address code\n");
    return -EIO;
   }
  }
 } else {
  addr = i2c_8bit_addr_from_msg(msg);
  if (flags & I2C_M_REV_DIR_ADDR)
   addr ^= 1;
  ret = try_address(i2c_adap, addr, retries);
  if ((ret != 1) && !nak_ok)
   return -ENXIO;
 }

 return 0;
}
