
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int kstrtou64 (char*,int ,int *) ;

__attribute__((used)) static u64 zynqmp_pm_argument_value(char *arg)
{
 u64 value;

 if (!arg)
  return 0;

 if (!kstrtou64(arg, 0, &value))
  return value;

 return 0;
}
