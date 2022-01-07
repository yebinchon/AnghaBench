
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PL080_CONTROL_DST_AHB2 ;
 int PL080_CONTROL_DST_INCR ;
 int PL080_CONTROL_PROT_MASK ;
 int PL080_CONTROL_PROT_SYS ;
 int PL080_CONTROL_SRC_AHB2 ;
 int PL080_CONTROL_SRC_INCR ;

__attribute__((used)) static u32 pl08x_cctl(u32 cctl)
{
 cctl &= ~(PL080_CONTROL_SRC_AHB2 | PL080_CONTROL_DST_AHB2 |
    PL080_CONTROL_SRC_INCR | PL080_CONTROL_DST_INCR |
    PL080_CONTROL_PROT_MASK);


 return cctl | PL080_CONTROL_PROT_SYS;
}
