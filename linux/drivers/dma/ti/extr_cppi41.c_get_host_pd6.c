
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DESC_PD_COMPLETE ;

__attribute__((used)) static u32 get_host_pd6(u32 length)
{
 u32 reg;


 reg = DESC_PD_COMPLETE;
 reg |= length;

 return reg;
}
