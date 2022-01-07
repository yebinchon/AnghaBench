
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int* arg; } ;
typedef enum i8042_controller_reset_mode { ____Placeholder_i8042_controller_reset_mode } i8042_controller_reset_mode ;


 int I8042_RESET_ALWAYS ;
 int I8042_RESET_NEVER ;
 int kstrtobool (char const*,int*) ;

__attribute__((used)) static int i8042_set_reset(const char *val, const struct kernel_param *kp)
{
 enum i8042_controller_reset_mode *arg = kp->arg;
 int error;
 bool reset;

 if (val) {
  error = kstrtobool(val, &reset);
  if (error)
   return error;
 } else {
  reset = 1;
 }

 *arg = reset ? I8042_RESET_ALWAYS : I8042_RESET_NEVER;
 return 0;
}
