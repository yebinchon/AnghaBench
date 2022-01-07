
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ inb (scalar_t__) ;
 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mlxcpld_led_bus_access_func(u16 base, u8 offset, u8 rw_flag,
     u8 *data)
{
 u32 addr = base + offset;

 if (rw_flag == 0)
  outb(*data, addr);
 else
  *data = inb(addr);
}
