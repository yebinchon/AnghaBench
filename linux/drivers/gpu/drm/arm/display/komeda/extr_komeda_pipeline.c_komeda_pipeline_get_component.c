
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_pipeline {int dummy; } ;
struct komeda_component {int dummy; } ;


 struct komeda_component** komeda_pipeline_get_component_pos (struct komeda_pipeline*,int) ;

struct komeda_component *
komeda_pipeline_get_component(struct komeda_pipeline *pipe, int id)
{
 struct komeda_component **pos = ((void*)0);
 struct komeda_component *c = ((void*)0);

 pos = komeda_pipeline_get_component_pos(pipe, id);
 if (pos)
  c = *pos;

 return c;
}
