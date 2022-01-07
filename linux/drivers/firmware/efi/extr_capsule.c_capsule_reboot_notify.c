
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int capsule_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stop_capsules ;

__attribute__((used)) static int capsule_reboot_notify(struct notifier_block *nb, unsigned long event, void *cmd)
{
 mutex_lock(&capsule_mutex);
 stop_capsules = 1;
 mutex_unlock(&capsule_mutex);

 return NOTIFY_DONE;
}
