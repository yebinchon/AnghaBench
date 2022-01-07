
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_BRIGHTNESS ;
 unsigned int NUM_GAMMA_STEPS ;

__attribute__((used)) static unsigned int s6e63j0x03_get_brightness_index(unsigned int brightness)
{
 unsigned int index;

 index = brightness / (MAX_BRIGHTNESS / NUM_GAMMA_STEPS);

 if (index >= NUM_GAMMA_STEPS)
  index = NUM_GAMMA_STEPS - 1;

 return index;
}
