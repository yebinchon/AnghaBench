
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int const u16 ;



__attribute__((used)) static inline u16 pixel32_to_be16(const uint32_t pixel)
{
 return (((pixel >> 3) & 0x001f) |
  ((pixel >> 5) & 0x07e0) |
  ((pixel >> 8) & 0xf800));
}
