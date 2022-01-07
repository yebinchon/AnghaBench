
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dm_ioctl {int flags; } ;


 int DM_SUSPEND_FLAG ;
 int do_resume (struct dm_ioctl*) ;
 int do_suspend (struct dm_ioctl*) ;

__attribute__((used)) static int dev_suspend(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
 if (param->flags & DM_SUSPEND_FLAG)
  return do_suspend(param);

 return do_resume(param);
}
