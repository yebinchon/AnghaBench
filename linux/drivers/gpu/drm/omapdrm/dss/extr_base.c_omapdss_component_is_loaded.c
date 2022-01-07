
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapdss_comp_node {int node; int compat; scalar_t__ dss_core_component; } ;


 scalar_t__ omapdss_device_is_registered (int ) ;
 int strstarts (int ,char*) ;

__attribute__((used)) static bool omapdss_component_is_loaded(struct omapdss_comp_node *comp)
{
 if (comp->dss_core_component)
  return 1;
 if (!strstarts(comp->compat, "omapdss,"))
  return 1;
 if (omapdss_device_is_registered(comp->node))
  return 1;

 return 0;
}
