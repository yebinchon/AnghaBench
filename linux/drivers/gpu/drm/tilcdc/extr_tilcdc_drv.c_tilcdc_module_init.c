
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_module_ops {int dummy; } ;
struct tilcdc_module {char const* name; int list; struct tilcdc_module_ops const* funcs; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;
 int module_list ;

void tilcdc_module_init(struct tilcdc_module *mod, const char *name,
  const struct tilcdc_module_ops *funcs)
{
 mod->name = name;
 mod->funcs = funcs;
 INIT_LIST_HEAD(&mod->list);
 list_add(&mod->list, &module_list);
}
