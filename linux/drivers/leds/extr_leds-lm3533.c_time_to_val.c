
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;



__attribute__((used)) static u8 time_to_val(unsigned *t, unsigned t_min, unsigned t_step,
       u8 v_min, u8 v_max)
{
 unsigned val;

 val = (*t + t_step / 2 - t_min) / t_step + v_min;

 *t = t_step * (val - v_min) + t_min;

 return (u8)val;
}
