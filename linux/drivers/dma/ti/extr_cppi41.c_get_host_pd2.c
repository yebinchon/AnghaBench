
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cppi41_channel {int q_comp_num; } ;


 int DESC_TYPE_USB ;

__attribute__((used)) static u32 get_host_pd2(struct cppi41_channel *c)
{
 u32 reg;

 reg = DESC_TYPE_USB;
 reg |= c->q_comp_num;

 return reg;
}
