
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u32
init_shift(u32 data, u8 shift)
{
 if (shift < 0x80)
  return data >> shift;
 return data << (0x100 - shift);
}
