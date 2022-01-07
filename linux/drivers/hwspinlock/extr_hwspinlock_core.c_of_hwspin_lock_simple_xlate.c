
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int args_count; int* args; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static inline int
of_hwspin_lock_simple_xlate(const struct of_phandle_args *hwlock_spec)
{
 if (WARN_ON(hwlock_spec->args_count != 1))
  return -EINVAL;

 return hwlock_spec->args[0];
}
