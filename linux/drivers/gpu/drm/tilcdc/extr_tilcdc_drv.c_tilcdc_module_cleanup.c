
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_module {int list; } ;


 int list_del (int *) ;

void tilcdc_module_cleanup(struct tilcdc_module *mod)
{
 list_del(&mod->list);
}
