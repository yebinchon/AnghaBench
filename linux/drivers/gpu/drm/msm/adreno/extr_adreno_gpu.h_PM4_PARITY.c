
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 PM4_PARITY(u32 val)
{
 return (0x9669 >> (0xF & (val ^
  (val >> 4) ^ (val >> 8) ^ (val >> 12) ^
  (val >> 16) ^ ((val) >> 20) ^ (val >> 24) ^
  (val >> 28)))) & 1;
}
