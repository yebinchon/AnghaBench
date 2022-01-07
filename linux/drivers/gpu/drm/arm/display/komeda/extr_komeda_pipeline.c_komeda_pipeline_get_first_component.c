
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct komeda_pipeline {int dummy; } ;
struct komeda_component {int dummy; } ;


 int find_first_bit (unsigned long*,int) ;
 struct komeda_component* komeda_pipeline_get_component (struct komeda_pipeline*,int) ;

struct komeda_component *
komeda_pipeline_get_first_component(struct komeda_pipeline *pipe,
        u32 comp_mask)
{
 struct komeda_component *c = ((void*)0);
 int id;

 id = find_first_bit((unsigned long *)&comp_mask, 32);
 if (id < 32)
  c = komeda_pipeline_get_component(pipe, id);

 return c;
}
