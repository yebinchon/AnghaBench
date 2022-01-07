
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;



__attribute__((used)) static bool edma_is_memcpy_channel(int ch_num, s32 *memcpy_channels)
{
 if (!memcpy_channels)
  return 0;
 while (*memcpy_channels != -1) {
  if (*memcpy_channels == ch_num)
   return 1;
  memcpy_channels++;
 }
 return 0;
}
