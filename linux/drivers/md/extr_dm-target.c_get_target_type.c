
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_type {int module; } ;


 struct target_type* __find_target_type (char const*) ;
 int _lock ;
 int down_read (int *) ;
 int try_module_get (int ) ;
 int up_read (int *) ;

__attribute__((used)) static struct target_type *get_target_type(const char *name)
{
 struct target_type *tt;

 down_read(&_lock);

 tt = __find_target_type(name);
 if (tt && !try_module_get(tt->module))
  tt = ((void*)0);

 up_read(&_lock);
 return tt;
}
