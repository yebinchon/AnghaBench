
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int outb (int,scalar_t__) ;
 int outl (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mlxcpld_i2c_lpc_write_buf(u8 *data, u8 len, u32 addr)
{
 int i;

 for (i = 0; i < len - len % 4; i += 4)
  outl(*(u32 *)(data + i), addr + i);
 for (; i < len; ++i)
  outb(*(data + i), addr + i);
}
