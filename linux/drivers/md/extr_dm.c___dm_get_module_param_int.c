
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_ONCE (int) ;
 int cmpxchg (int*,int,int) ;

__attribute__((used)) static int __dm_get_module_param_int(int *module_param, int min, int max)
{
 int param = READ_ONCE(*module_param);
 int modified_param = 0;
 bool modified = 1;

 if (param < min)
  modified_param = min;
 else if (param > max)
  modified_param = max;
 else
  modified = 0;

 if (modified) {
  (void)cmpxchg(module_param, param, modified_param);
  param = modified_param;
 }

 return param;
}
