
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint16_t ;



__attribute__((used)) static uint8_t radeon_compute_pll_gain(uint16_t ref_freq, uint16_t ref_div,
           uint16_t fb_div)
{
 unsigned int vcoFreq;

 if (!ref_div)
  return 1;

 vcoFreq = ((unsigned)ref_freq * fb_div) / ref_div;





 if (vcoFreq >= 30000)



  return 7;
 else if (vcoFreq >= 18000)



  return 4;
 else



  return 1;
}
