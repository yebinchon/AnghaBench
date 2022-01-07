
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 int edac_mc_reset_delay_period (unsigned int) ;
 int kstrtouint (char const*,int ,unsigned int*) ;

__attribute__((used)) static int edac_set_poll_msec(const char *val, const struct kernel_param *kp)
{
 unsigned int i;
 int ret;

 if (!val)
  return -EINVAL;

 ret = kstrtouint(val, 0, &i);
 if (ret)
  return ret;

 if (i < 1000)
  return -EINVAL;

 *((unsigned int *)kp->arg) = i;


 edac_mc_reset_delay_period(i);

 return 0;
}
