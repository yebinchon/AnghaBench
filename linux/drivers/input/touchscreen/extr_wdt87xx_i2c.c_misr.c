
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static u16 misr(u16 cur_value, u8 new_value)
{
 u32 a, b;
 u32 bit0;
 u32 y;

 a = cur_value;
 b = new_value;
 bit0 = a ^ (b & 1);
 bit0 ^= a >> 1;
 bit0 ^= a >> 2;
 bit0 ^= a >> 4;
 bit0 ^= a >> 5;
 bit0 ^= a >> 7;
 bit0 ^= a >> 11;
 bit0 ^= a >> 15;
 y = (a << 1) ^ b;
 y = (y & ~1) | (bit0 & 1);

 return (u16)y;
}
