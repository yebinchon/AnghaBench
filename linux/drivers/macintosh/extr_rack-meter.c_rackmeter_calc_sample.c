
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rackmeter {int* ubuf; } ;



__attribute__((used)) static u32 rackmeter_calc_sample(struct rackmeter *rm, unsigned int index)
{
 int led;
 u32 sample = 0;

 for (led = 0; led < 16; led++) {
  sample >>= 1;
  sample |= ((rm->ubuf[led] >= 0x80) << 15);
 }
 return (sample << 17) | (sample >> 15);
}
