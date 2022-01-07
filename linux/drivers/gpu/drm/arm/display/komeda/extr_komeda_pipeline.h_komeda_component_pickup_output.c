
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct komeda_component {int supported_outputs; int pipeline; } ;


 struct komeda_component* komeda_pipeline_get_first_component (int ,int) ;

__attribute__((used)) static inline struct komeda_component *
komeda_component_pickup_output(struct komeda_component *c, u32 avail_comps)
{
 u32 avail_inputs = c->supported_outputs & (avail_comps);

 return komeda_pipeline_get_first_component(c->pipeline, avail_inputs);
}
