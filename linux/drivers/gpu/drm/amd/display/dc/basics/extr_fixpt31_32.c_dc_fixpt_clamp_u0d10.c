
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {int value; } ;


 unsigned int clamp_ux_dy (int ,int ,int,int) ;

unsigned int dc_fixpt_clamp_u0d10(struct fixed31_32 arg)
{
 return clamp_ux_dy(arg.value, 0, 10, 1);
}
