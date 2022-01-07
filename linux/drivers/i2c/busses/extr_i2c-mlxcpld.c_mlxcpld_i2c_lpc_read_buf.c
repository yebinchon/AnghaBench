
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int inb (scalar_t__) ;
 scalar_t__ inl (scalar_t__) ;

__attribute__((used)) static void mlxcpld_i2c_lpc_read_buf(u8 *data, u8 len, u32 addr)
{
 int i;

 for (i = 0; i < len - len % 4; i += 4)
  *(u32 *)(data + i) = inl(addr + i);
 for (; i < len; ++i)
  *(data + i) = inb(addr + i);
}
