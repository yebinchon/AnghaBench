
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct i2c_device {int i2c_addr; int* i2c_write_buffer; int* i2c_read_buffer; int i2c_adap; } ;


 int I2C_M_RD ;
 int dprintk (char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static u16 dib9000_i2c_read16(struct i2c_device *i2c, u16 reg)
{
 struct i2c_msg msg[2] = {
  {.addr = i2c->i2c_addr >> 1, .flags = 0,
   .buf = i2c->i2c_write_buffer, .len = 2},
  {.addr = i2c->i2c_addr >> 1, .flags = I2C_M_RD,
   .buf = i2c->i2c_read_buffer, .len = 2},
 };

 i2c->i2c_write_buffer[0] = reg >> 8;
 i2c->i2c_write_buffer[1] = reg & 0xff;

 if (i2c_transfer(i2c->i2c_adap, msg, 2) != 2) {
  dprintk("read register %x error\n", reg);
  return 0;
 }

 return (i2c->i2c_read_buffer[0] << 8) | i2c->i2c_read_buffer[1];
}
