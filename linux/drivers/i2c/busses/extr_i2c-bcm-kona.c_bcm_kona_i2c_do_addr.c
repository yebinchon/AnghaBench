
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int addr; } ;
struct bcm_kona_i2c_dev {int dummy; } ;


 int BCM_CMD_RESTART ;
 int EREMOTEIO ;
 int I2C_M_RD ;
 int I2C_M_TEN ;
 scalar_t__ bcm_kona_i2c_write_byte (struct bcm_kona_i2c_dev*,unsigned char,int ) ;
 scalar_t__ bcm_kona_send_i2c_cmd (struct bcm_kona_i2c_dev*,int ) ;
 unsigned char i2c_8bit_addr_from_msg (struct i2c_msg*) ;

__attribute__((used)) static int bcm_kona_i2c_do_addr(struct bcm_kona_i2c_dev *dev,
         struct i2c_msg *msg)
{
 unsigned char addr;

 if (msg->flags & I2C_M_TEN) {

  addr = 0xF0 | ((msg->addr & 0x300) >> 7);
  if (bcm_kona_i2c_write_byte(dev, addr, 0) < 0)
   return -EREMOTEIO;


  addr = msg->addr & 0xFF;
  if (bcm_kona_i2c_write_byte(dev, addr, 0) < 0)
   return -EREMOTEIO;

  if (msg->flags & I2C_M_RD) {

   if (bcm_kona_send_i2c_cmd(dev, BCM_CMD_RESTART) < 0)
    return -EREMOTEIO;


   addr = 0xF0 | ((msg->addr & 0x300) >> 7) | 0x01;
   if (bcm_kona_i2c_write_byte(dev, addr, 0) < 0)
    return -EREMOTEIO;
  }
 } else {
  addr = i2c_8bit_addr_from_msg(msg);

  if (bcm_kona_i2c_write_byte(dev, addr, 0) < 0)
   return -EREMOTEIO;
 }

 return 0;
}
