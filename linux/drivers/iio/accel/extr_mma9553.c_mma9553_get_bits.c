
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int ffs (int) ;

__attribute__((used)) static u8 mma9553_get_bits(u16 val, u16 mask)
{
 return (val & mask) >> (ffs(mask) - 1);
}
