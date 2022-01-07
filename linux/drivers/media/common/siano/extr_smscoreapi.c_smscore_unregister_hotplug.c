
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_notifyee_t {scalar_t__ hotplug; int entry; } ;
struct list_head {struct list_head* next; } ;
typedef scalar_t__ hotplug_t ;


 int g_smscore_deviceslock ;
 struct list_head g_smscore_notifyees ;
 int kfree (struct smscore_device_notifyee_t*) ;
 int kmutex_lock (int *) ;
 int kmutex_unlock (int *) ;
 int list_del (int *) ;

void smscore_unregister_hotplug(hotplug_t hotplug)
{
 struct list_head *next, *first;

 kmutex_lock(&g_smscore_deviceslock);

 first = &g_smscore_notifyees;

 for (next = first->next; next != first;) {
  struct smscore_device_notifyee_t *notifyee =
   (struct smscore_device_notifyee_t *) next;
  next = next->next;

  if (notifyee->hotplug == hotplug) {
   list_del(&notifyee->entry);
   kfree(notifyee);
  }
 }

 kmutex_unlock(&g_smscore_deviceslock);
}
