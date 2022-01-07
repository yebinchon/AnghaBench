
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct bbc_beep_info {unsigned int clock_freq; } ;



__attribute__((used)) static u32 bbc_count_to_reg(struct bbc_beep_info *info, unsigned int count)
{
 u32 val, clock_freq = info->clock_freq;
 int i;

 if (!count)
  return 0;

 if (count <= clock_freq >> 20)
  return 1 << 18;

 if (count >= clock_freq >> 12)
  return 1 << 10;

 val = 1 << 18;
 for (i = 19; i >= 11; i--) {
  val >>= 1;
  if (count <= clock_freq >> i)
   break;
 }

 return val;
}
