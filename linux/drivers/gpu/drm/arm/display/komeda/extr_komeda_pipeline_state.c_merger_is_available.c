
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct komeda_pipeline {TYPE_2__* merger; } ;
struct TYPE_8__ {TYPE_3__* component; } ;
struct komeda_data_flow_cfg {TYPE_4__ input; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_5__ {int supported_inputs; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int has_bit (int ,int ) ;

__attribute__((used)) static bool merger_is_available(struct komeda_pipeline *pipe,
    struct komeda_data_flow_cfg *dflow)
{
 u32 avail_inputs = pipe->merger ?
      pipe->merger->base.supported_inputs : 0;

 return has_bit(dflow->input.component->id, avail_inputs);
}
