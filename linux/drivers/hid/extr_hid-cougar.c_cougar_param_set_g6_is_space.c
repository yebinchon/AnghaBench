
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int cougar_fix_g6_mapping () ;
 int param_set_bool (char const*,struct kernel_param const*) ;

__attribute__((used)) static int cougar_param_set_g6_is_space(const char *val,
     const struct kernel_param *kp)
{
 int ret;

 ret = param_set_bool(val, kp);
 if (ret)
  return ret;

 cougar_fix_g6_mapping();

 return 0;
}
