
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int unstable_ioctls ;

int panfrost_unstable_ioctl_check(void)
{
 if (!unstable_ioctls)
  return -ENOSYS;

 return 0;
}
