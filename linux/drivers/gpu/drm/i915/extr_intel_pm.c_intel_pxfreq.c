
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static unsigned long intel_pxfreq(u32 vidfreq)
{
 unsigned long freq;
 int div = (vidfreq & 0x3f0000) >> 16;
 int post = (vidfreq & 0x3000) >> 12;
 int pre = (vidfreq & 0x7);

 if (!pre)
  return 0;

 freq = ((div * 133333) / ((1<<post) * pre));

 return freq;
}
