
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
{
 int i;
 u32 v = 0;

 if (src_bytes > 4)
  src_bytes = 4;
 for (i = 0; i < src_bytes; i++)
  v |= ((u32)src[i]) << ((3 - i) * 8);
 return v;
}
