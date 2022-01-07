
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 int kstrtouint (char const*,int ,unsigned int*) ;

__attribute__((used)) static int ati_remote2_set_mask(const char *val,
    const struct kernel_param *kp,
    unsigned int max)
{
 unsigned int mask;
 int ret;

 if (!val)
  return -EINVAL;

 ret = kstrtouint(val, 0, &mask);
 if (ret)
  return ret;

 if (mask & ~max)
  return -EINVAL;

 *(unsigned int *)kp->arg = mask;

 return 0;
}
