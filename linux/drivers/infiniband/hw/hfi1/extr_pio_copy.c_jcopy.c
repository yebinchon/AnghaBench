
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline void jcopy(u8 *dest, const u8 *src, u32 n)
{
 switch (n) {
 case 7:
  *dest++ = *src++;

 case 6:
  *dest++ = *src++;

 case 5:
  *dest++ = *src++;

 case 4:
  *dest++ = *src++;

 case 3:
  *dest++ = *src++;

 case 2:
  *dest++ = *src++;

 case 1:
  *dest++ = *src++;

 }
}
