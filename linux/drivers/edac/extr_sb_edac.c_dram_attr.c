
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GET_BITFIELD (int ,int,int) ;

__attribute__((used)) static u32 dram_attr(u32 reg)
{
 return GET_BITFIELD(reg, 2, 3);
}
