
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long EFAULT ;





 int adf_ctl_ioctl_dev_config (struct file*,unsigned int,unsigned long) ;
 int adf_ctl_ioctl_dev_start (struct file*,unsigned int,unsigned long) ;
 int adf_ctl_ioctl_dev_stop (struct file*,unsigned int,unsigned long) ;
 int adf_ctl_ioctl_get_num_devices (struct file*,unsigned int,unsigned long) ;
 int adf_ctl_ioctl_get_status (struct file*,unsigned int,unsigned long) ;
 int adf_ctl_lock ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static long adf_ctl_ioctl(struct file *fp, unsigned int cmd, unsigned long arg)
{
 int ret;

 if (mutex_lock_interruptible(&adf_ctl_lock))
  return -EFAULT;

 switch (cmd) {
 case 132:
  ret = adf_ctl_ioctl_dev_config(fp, cmd, arg);
  break;

 case 128:
  ret = adf_ctl_ioctl_dev_stop(fp, cmd, arg);
  break;

 case 130:
  ret = adf_ctl_ioctl_dev_start(fp, cmd, arg);
  break;

 case 131:
  ret = adf_ctl_ioctl_get_num_devices(fp, cmd, arg);
  break;

 case 129:
  ret = adf_ctl_ioctl_get_status(fp, cmd, arg);
  break;
 default:
  pr_err("QAT: Invalid ioctl\n");
  ret = -EFAULT;
  break;
 }
 mutex_unlock(&adf_ctl_lock);
 return ret;
}
