
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_i2c_bus {int i2c; } ;
struct i2c_msg {int addr; int len; int* buf; int flags; } ;


 int I2C_M_RD ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static bool
mxm_shadow_rom_fetch(struct nvkm_i2c_bus *bus, u8 addr,
       u8 offset, u8 size, u8 *data)
{
 struct i2c_msg msgs[] = {
  { .addr = addr, .flags = 0, .len = 1, .buf = &offset },
  { .addr = addr, .flags = I2C_M_RD, .len = size, .buf = data, },
 };

 return i2c_transfer(&bus->i2c, msgs, 2) == 2;
}
