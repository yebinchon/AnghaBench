
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct i2c_adapter {int dev; } ;


 int EIO ;
 int I2C_M_RD ;
 int dev_warn (int *,char*,int,int) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static inline int i2c_read_regs16(struct i2c_adapter *adapter, u8 adr,
      u16 reg, u8 *val, int count)
{
 u8 msg[2] = {reg >> 8, reg & 0xff};
 struct i2c_msg msgs[2] = {{.addr = adr, .flags = 0,
       .buf = msg, .len = 2},
      {.addr = adr, .flags = I2C_M_RD,
       .buf = val, .len = count } };

 if (i2c_transfer(adapter, msgs, 2) != 2) {
  dev_warn(&adapter->dev, "i2c read error ([%02x] %04x)\n",
    adr, reg);
  return -EIO;
 }
 return 0;
}
