
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ffs (int) ;

__attribute__((used)) static u16 mma9553_set_bits(u16 current_val, u16 val, u16 mask)
{
 return (current_val & ~mask) | (val << (ffs(mask) - 1));
}
