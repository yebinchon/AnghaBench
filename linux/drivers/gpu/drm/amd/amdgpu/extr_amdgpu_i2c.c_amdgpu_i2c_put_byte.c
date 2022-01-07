
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct amdgpu_i2c_chan {int adapter; } ;


 int DRM_DEBUG (char*,int ,int ) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static void amdgpu_i2c_put_byte(struct amdgpu_i2c_chan *i2c_bus,
     u8 slave_addr,
     u8 addr,
     u8 val)
{
 uint8_t out_buf[2];
 struct i2c_msg msg = {
  .addr = slave_addr,
  .flags = 0,
  .len = 2,
  .buf = out_buf,
 };

 out_buf[0] = addr;
 out_buf[1] = val;

 if (i2c_transfer(&i2c_bus->adapter, &msg, 1) != 1)
  DRM_DEBUG("i2c 0x%02x 0x%02x write failed\n",
     addr, val);
}
