
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int flags; int * buf; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_i2c_chan {int dummy; } ;


 int ATOM_MAX_HW_I2C_READ ;
 int ATOM_MAX_HW_I2C_WRITE ;
 int HW_I2C_READ ;
 int HW_I2C_WRITE ;
 int I2C_M_RD ;
 int amdgpu_atombios_i2c_process_i2c_ch (struct amdgpu_i2c_chan*,int ,int ,int *,int) ;
 struct amdgpu_i2c_chan* i2c_get_adapdata (struct i2c_adapter*) ;

int amdgpu_atombios_i2c_xfer(struct i2c_adapter *i2c_adap,
        struct i2c_msg *msgs, int num)
{
 struct amdgpu_i2c_chan *i2c = i2c_get_adapdata(i2c_adap);
 struct i2c_msg *p;
 int i, remaining, current_count, buffer_offset, max_bytes, ret;
 u8 flags;


 p = &msgs[0];
 if ((num == 1) && (p->len == 0)) {
  ret = amdgpu_atombios_i2c_process_i2c_ch(i2c,
        p->addr, HW_I2C_WRITE,
        ((void*)0), 0);
  if (ret)
   return ret;
  else
   return num;
 }

 for (i = 0; i < num; i++) {
  p = &msgs[i];
  remaining = p->len;
  buffer_offset = 0;

  if (p->flags & I2C_M_RD) {
   max_bytes = ATOM_MAX_HW_I2C_READ;
   flags = HW_I2C_READ;
  } else {
   max_bytes = ATOM_MAX_HW_I2C_WRITE;
   flags = HW_I2C_WRITE;
  }
  while (remaining) {
   if (remaining > max_bytes)
    current_count = max_bytes;
   else
    current_count = remaining;
   ret = amdgpu_atombios_i2c_process_i2c_ch(i2c,
         p->addr, flags,
         &p->buf[buffer_offset], current_count);
   if (ret)
    return ret;
   remaining -= current_count;
   buffer_offset += current_count;
  }
 }

 return num;
}
