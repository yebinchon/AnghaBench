
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct i2c_device {int i2c_addr; int* i2c_write_buffer; int i2c_adap; } ;


 int EREMOTEIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int dib9000_i2c_write16(struct i2c_device *i2c, u16 reg, u16 val)
{
 struct i2c_msg msg = {
  .addr = i2c->i2c_addr >> 1, .flags = 0,
  .buf = i2c->i2c_write_buffer, .len = 4
 };

 i2c->i2c_write_buffer[0] = (reg >> 8) & 0xff;
 i2c->i2c_write_buffer[1] = reg & 0xff;
 i2c->i2c_write_buffer[2] = (val >> 8) & 0xff;
 i2c->i2c_write_buffer[3] = val & 0xff;

 return i2c_transfer(i2c->i2c_adap, &msg, 1) != 1 ? -EREMOTEIO : 0;
}
