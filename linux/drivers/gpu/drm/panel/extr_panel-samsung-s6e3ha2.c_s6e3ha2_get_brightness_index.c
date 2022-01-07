
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int S6E3HA2_MAX_BRIGHTNESS ;
 int S6E3HA2_NUM_GAMMA_STEPS ;

__attribute__((used)) static unsigned int s6e3ha2_get_brightness_index(unsigned int brightness)
{
 return (brightness * (S6E3HA2_NUM_GAMMA_STEPS - 1)) /
  S6E3HA2_MAX_BRIGHTNESS;
}
