
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int hp_sdc_rtc_ioctl (struct file*,unsigned int,unsigned long) ;
 int hp_sdc_rtc_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long hp_sdc_rtc_unlocked_ioctl(struct file *file,
          unsigned int cmd, unsigned long arg)
{
 int ret;

 mutex_lock(&hp_sdc_rtc_mutex);
 ret = hp_sdc_rtc_ioctl(file, cmd, arg);
 mutex_unlock(&hp_sdc_rtc_mutex);

 return ret;
}
