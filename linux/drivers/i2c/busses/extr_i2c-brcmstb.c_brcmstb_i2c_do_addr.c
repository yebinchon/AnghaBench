
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int addr; } ;
struct brcmstb_i2c_dev {int dummy; } ;


 int COND_NOSTOP ;
 int COND_RESTART ;
 int EREMOTEIO ;
 int I2C_M_RD ;
 int I2C_M_TEN ;
 scalar_t__ brcmstb_i2c_write_data_byte (struct brcmstb_i2c_dev*,unsigned char*,int ) ;
 int brcmstb_set_i2c_start_stop (struct brcmstb_i2c_dev*,int) ;
 int bsc_writel (struct brcmstb_i2c_dev*,unsigned char,int ) ;
 int chip_address ;
 unsigned char i2c_8bit_addr_from_msg (struct i2c_msg*) ;

__attribute__((used)) static int brcmstb_i2c_do_addr(struct brcmstb_i2c_dev *dev,
          struct i2c_msg *msg)
{
 unsigned char addr;

 if (msg->flags & I2C_M_TEN) {

  addr = 0xF0 | ((msg->addr & 0x300) >> 7);
  bsc_writel(dev, addr, chip_address);


  addr = msg->addr & 0xFF;
  if (brcmstb_i2c_write_data_byte(dev, &addr, 0) < 0)
   return -EREMOTEIO;

  if (msg->flags & I2C_M_RD) {

   brcmstb_set_i2c_start_stop(dev, COND_RESTART
         | COND_NOSTOP);

   addr = 0xF0 | ((msg->addr & 0x300) >> 7) | 0x01;
   if (brcmstb_i2c_write_data_byte(dev, &addr, 0) < 0)
    return -EREMOTEIO;

  }
 } else {
  addr = i2c_8bit_addr_from_msg(msg);

  bsc_writel(dev, addr, chip_address);
 }

 return 0;
}
