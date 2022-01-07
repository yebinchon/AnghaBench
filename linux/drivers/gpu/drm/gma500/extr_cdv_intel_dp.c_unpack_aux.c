
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void
unpack_aux(uint32_t src, uint8_t *dst, int dst_bytes)
{
 int i;
 if (dst_bytes > 4)
  dst_bytes = 4;
 for (i = 0; i < dst_bytes; i++)
  dst[i] = src >> ((3-i) * 8);
}
