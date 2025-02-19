
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_engine {int num_siblings; int num_bonds; struct ve_bond* bonds; struct intel_engine_cs const** siblings; } ;
struct ve_bond {int sibling_mask; struct intel_engine_cs const* master; } ;
struct intel_engine_cs {int mask; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ve_bond* krealloc (struct ve_bond*,int,int ) ;
 struct virtual_engine* to_virtual_engine (struct intel_engine_cs*) ;
 struct ve_bond* virtual_find_bond (struct virtual_engine*,struct intel_engine_cs const*) ;

int intel_virtual_engine_attach_bond(struct intel_engine_cs *engine,
         const struct intel_engine_cs *master,
         const struct intel_engine_cs *sibling)
{
 struct virtual_engine *ve = to_virtual_engine(engine);
 struct ve_bond *bond;
 int n;


 for (n = 0; n < ve->num_siblings; n++)
  if (sibling == ve->siblings[n])
   break;
 if (n == ve->num_siblings)
  return -EINVAL;

 bond = virtual_find_bond(ve, master);
 if (bond) {
  bond->sibling_mask |= sibling->mask;
  return 0;
 }

 bond = krealloc(ve->bonds,
   sizeof(*bond) * (ve->num_bonds + 1),
   GFP_KERNEL);
 if (!bond)
  return -ENOMEM;

 bond[ve->num_bonds].master = master;
 bond[ve->num_bonds].sibling_mask = sibling->mask;

 ve->bonds = bond;
 ve->num_bonds++;

 return 0;
}
