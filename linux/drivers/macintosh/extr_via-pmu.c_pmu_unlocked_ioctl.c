
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmu_info_proc_mutex ;
 int pmu_ioctl (struct file*,int ,int ) ;

__attribute__((used)) static long pmu_unlocked_ioctl(struct file *filp,
          u_int cmd, u_long arg)
{
 int ret;

 mutex_lock(&pmu_info_proc_mutex);
 ret = pmu_ioctl(filp, cmd, arg);
 mutex_unlock(&pmu_info_proc_mutex);

 return ret;
}
