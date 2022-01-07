
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void intel_dp_unpack_aux(u32 src, u8 *dst, int dst_bytes)
{
 int i;
 if (dst_bytes > 4)
  dst_bytes = 4;
 for (i = 0; i < dst_bytes; i++)
  dst[i] = src >> ((3-i) * 8);
}
