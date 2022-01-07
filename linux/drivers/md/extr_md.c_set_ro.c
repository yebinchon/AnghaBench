
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int kstrtouint (char const*,int,unsigned int*) ;
 int start_readonly ;

__attribute__((used)) static int set_ro(const char *val, const struct kernel_param *kp)
{
 return kstrtouint(val, 10, (unsigned int *)&start_readonly);
}
