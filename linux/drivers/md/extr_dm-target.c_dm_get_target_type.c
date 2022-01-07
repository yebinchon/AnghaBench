
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_type {int dummy; } ;


 struct target_type* get_target_type (char const*) ;
 int load_module (char const*) ;

struct target_type *dm_get_target_type(const char *name)
{
 struct target_type *tt = get_target_type(name);

 if (!tt) {
  load_module(name);
  tt = get_target_type(name);
 }

 return tt;
}
