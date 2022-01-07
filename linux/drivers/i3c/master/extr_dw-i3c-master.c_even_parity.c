
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 even_parity(u8 p)
{
 p ^= p >> 4;
 p &= 0xf;

 return (0x9669 >> p) & 1;
}
