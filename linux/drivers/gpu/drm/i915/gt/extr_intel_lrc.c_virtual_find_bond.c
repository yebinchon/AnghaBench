
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_engine {int num_bonds; struct ve_bond* bonds; } ;
struct ve_bond {struct intel_engine_cs const* master; } ;
struct intel_engine_cs {int dummy; } ;



__attribute__((used)) static struct ve_bond *
virtual_find_bond(struct virtual_engine *ve,
    const struct intel_engine_cs *master)
{
 int i;

 for (i = 0; i < ve->num_bonds; i++) {
  if (ve->bonds[i].master == master)
   return &ve->bonds[i];
 }

 return ((void*)0);
}
