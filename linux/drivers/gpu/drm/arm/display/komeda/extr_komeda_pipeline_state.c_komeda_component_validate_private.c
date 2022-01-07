
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct komeda_component_state {int dummy; } ;
struct komeda_component {int name; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* validate ) (struct komeda_component*,struct komeda_component_state*) ;} ;


 int DRM_DEBUG_ATOMIC (char*,int ) ;
 int stub1 (struct komeda_component*,struct komeda_component_state*) ;

__attribute__((used)) static int
komeda_component_validate_private(struct komeda_component *c,
      struct komeda_component_state *st)
{
 int err;

 if (!c->funcs->validate)
  return 0;

 err = c->funcs->validate(c, st);
 if (err)
  DRM_DEBUG_ATOMIC("%s validate private failed.\n", c->name);

 return err;
}
