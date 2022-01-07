
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 repaper_interleave_bits(u16 value)
{
 value = (value | (value << 4)) & 0x0f0f;
 value = (value | (value << 2)) & 0x3333;
 value = (value | (value << 1)) & 0x5555;

 return value;
}
