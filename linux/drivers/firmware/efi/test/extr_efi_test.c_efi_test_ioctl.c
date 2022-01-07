
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
 long ENOTTY ;
 long efi_runtime_get_nexthighmonocount (unsigned long) ;
 long efi_runtime_get_nextvariablename (unsigned long) ;
 long efi_runtime_get_time (unsigned long) ;
 long efi_runtime_get_variable (unsigned long) ;
 long efi_runtime_get_waketime (unsigned long) ;
 long efi_runtime_query_capsulecaps (unsigned long) ;
 long efi_runtime_query_variableinfo (unsigned long) ;
 long efi_runtime_reset_system (unsigned long) ;
 long efi_runtime_set_time (unsigned long) ;
 long efi_runtime_set_variable (unsigned long) ;
 long efi_runtime_set_waketime (unsigned long) ;

__attribute__((used)) static long efi_test_ioctl(struct file *file, unsigned int cmd,
       unsigned long arg)
{
 switch (cmd) {
 case 135:
  return efi_runtime_get_variable(arg);

 case 129:
  return efi_runtime_set_variable(arg);

 case 136:
  return efi_runtime_get_time(arg);

 case 130:
  return efi_runtime_set_time(arg);

 case 134:
  return efi_runtime_get_waketime(arg);

 case 128:
  return efi_runtime_set_waketime(arg);

 case 137:
  return efi_runtime_get_nextvariablename(arg);

 case 138:
  return efi_runtime_get_nexthighmonocount(arg);

 case 132:
  return efi_runtime_query_variableinfo(arg);

 case 133:
  return efi_runtime_query_capsulecaps(arg);

 case 131:
  return efi_runtime_reset_system(arg);
 }

 return -ENOTTY;
}
