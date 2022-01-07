
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_component {int supported_outputs; int max_active_outputs; int supported_inputs; int max_active_inputs; int id; int name; } ;


 int BIT (int ) ;
 int DRM_DEBUG (char*,int ,int ,...) ;

__attribute__((used)) static void komeda_component_dump(struct komeda_component *c)
{
 if (!c)
  return;

 DRM_DEBUG("	%s: ID %d-0x%08lx.\n",
    c->name, c->id, BIT(c->id));
 DRM_DEBUG("		max_active_inputs:%d, supported_inputs: 0x%08x.\n",
    c->max_active_inputs, c->supported_inputs);
 DRM_DEBUG("		max_active_outputs:%d, supported_outputs: 0x%08x.\n",
    c->max_active_outputs, c->supported_outputs);
}
