
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_DCLK_FREQ ;
 int decode_dclk ;
 int dmi_walk (int ,void*) ;

__attribute__((used)) static int get_dclk_freq(void)
{
 int dclk_freq = 0;

 dmi_walk(decode_dclk, (void *)&dclk_freq);

 if (dclk_freq < 1)
  return DEFAULT_DCLK_FREQ;

 return dclk_freq;
}
