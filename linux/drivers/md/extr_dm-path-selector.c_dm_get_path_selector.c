
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_selector_type {int dummy; } ;
struct ps_internal {struct path_selector_type pst; } ;


 struct ps_internal* get_path_selector (char const*) ;
 int request_module (char*,char const*) ;

struct path_selector_type *dm_get_path_selector(const char *name)
{
 struct ps_internal *psi;

 if (!name)
  return ((void*)0);

 psi = get_path_selector(name);
 if (!psi) {
  request_module("dm-%s", name);
  psi = get_path_selector(name);
 }

 return psi ? &psi->pst : ((void*)0);
}
