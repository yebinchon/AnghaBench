
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {int value; } ;


 unsigned int ux_dy (int ,int,int) ;

unsigned int dc_fixpt_u4d19(struct fixed31_32 arg)
{
 return ux_dy(arg.value, 4, 19);
}
