
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void sii8620_update_array(u8 *dst, u8 *src, int count)
{
 while (--count >= 0) {
  *src ^= *dst;
  *dst++ ^= *src++;
 }
}
