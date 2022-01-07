
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc {int hwss; } ;


 int dcn10_funcs ;

void dcn10_hw_sequencer_construct(struct dc *dc)
{
 dc->hwss = dcn10_funcs;
}
