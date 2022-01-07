
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct komeda_pipeline {int n_layers; struct komeda_layer** layers; } ;
struct TYPE_2__ {int id; } ;
struct komeda_layer {scalar_t__ layer_type; TYPE_1__ base; } ;


 int KOMEDA_COMPONENT_LAYER0 ;

__attribute__((used)) static struct komeda_layer *
komeda_get_layer_split_right_layer(struct komeda_pipeline *pipe,
       struct komeda_layer *left)
{
 int index = left->base.id - KOMEDA_COMPONENT_LAYER0;
 int i;

 for (i = index + 1; i < pipe->n_layers; i++)
  if (left->layer_type == pipe->layers[i]->layer_type)
   return pipe->layers[i];
 return ((void*)0);
}
