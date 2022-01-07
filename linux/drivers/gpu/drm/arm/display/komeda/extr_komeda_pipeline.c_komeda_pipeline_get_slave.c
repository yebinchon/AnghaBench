
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct komeda_pipeline {TYPE_1__* compiz; } ;
struct komeda_component {struct komeda_pipeline* pipeline; } ;
struct TYPE_2__ {int base; } ;


 int KOMEDA_PIPELINE_COMPIZS ;
 struct komeda_component* komeda_component_pickup_input (int *,int ) ;

struct komeda_pipeline *
komeda_pipeline_get_slave(struct komeda_pipeline *master)
{
 struct komeda_component *slave;

 slave = komeda_component_pickup_input(&master->compiz->base,
           KOMEDA_PIPELINE_COMPIZS);

 return slave ? slave->pipeline : ((void*)0);
}
