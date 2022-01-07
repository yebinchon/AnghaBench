
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmx_filter {int* mode; } ;


 int DMX_FILTER_SIZE ;

__attribute__((used)) static inline void invert_mode(struct dmx_filter *filter)
{
 int i;

 for (i = 0; i < DMX_FILTER_SIZE; i++)
  filter->mode[i] ^= 0xff;
}
