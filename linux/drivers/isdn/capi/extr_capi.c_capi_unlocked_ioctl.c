
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int capi_ioctl (struct file*,unsigned int,unsigned long) ;
 int capi_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long
capi_unlocked_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 int ret;

 mutex_lock(&capi_mutex);
 ret = capi_ioctl(file, cmd, arg);
 mutex_unlock(&capi_mutex);

 return ret;
}
