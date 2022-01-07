
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int clamp_val (int,int,int) ;

__attribute__((used)) static void clamp_align(u32 *v, u32 min, u32 max, u32 step)
{
 *v = clamp_val(*v, min, max);
 if (step > 1)
  *v = (*v - min) / step * step + min;
}
