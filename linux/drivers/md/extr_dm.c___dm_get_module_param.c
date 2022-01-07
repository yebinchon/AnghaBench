
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int READ_ONCE (unsigned int) ;
 int cmpxchg (unsigned int*,unsigned int,unsigned int) ;

unsigned __dm_get_module_param(unsigned *module_param,
          unsigned def, unsigned max)
{
 unsigned param = READ_ONCE(*module_param);
 unsigned modified_param = 0;

 if (!param)
  modified_param = def;
 else if (param > max)
  modified_param = max;

 if (modified_param) {
  (void)cmpxchg(module_param, param, modified_param);
  param = modified_param;
 }

 return param;
}
