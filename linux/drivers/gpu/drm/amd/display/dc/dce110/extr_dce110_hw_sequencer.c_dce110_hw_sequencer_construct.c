
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc {int hwss; } ;


 int dce110_funcs ;

void dce110_hw_sequencer_construct(struct dc *dc)
{
 dc->hwss = dce110_funcs;
}
