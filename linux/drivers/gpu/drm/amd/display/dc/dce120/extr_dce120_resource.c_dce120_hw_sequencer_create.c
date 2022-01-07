
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc {int dummy; } ;


 int dce120_hw_sequencer_construct (struct dc*) ;

__attribute__((used)) static bool dce120_hw_sequencer_create(struct dc *dc)
{



 dce120_hw_sequencer_construct(dc);



 return 1;
}
