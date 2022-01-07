
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int device; } ;
struct smscore_device_notifyee_t {int (* hotplug ) (struct smscore_device_t*,int ,int) ;int entry; } ;
struct list_head {struct list_head* next; } ;
typedef int (* hotplug_t ) (struct smscore_device_t*,int ,int) ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct list_head g_smscore_devices ;
 int g_smscore_deviceslock ;
 int g_smscore_notifyees ;
 int kfree (struct smscore_device_notifyee_t*) ;
 struct smscore_device_notifyee_t* kmalloc (int,int ) ;
 int kmutex_lock (int *) ;
 int kmutex_unlock (int *) ;
 int list_add (int *,int *) ;

int smscore_register_hotplug(hotplug_t hotplug)
{
 struct smscore_device_notifyee_t *notifyee;
 struct list_head *next, *first;
 int rc = 0;

 kmutex_lock(&g_smscore_deviceslock);
 notifyee = kmalloc(sizeof(*notifyee), GFP_KERNEL);
 if (notifyee) {

  first = &g_smscore_devices;
  for (next = first->next;
       next != first && !rc;
       next = next->next) {
   struct smscore_device_t *coredev =
    (struct smscore_device_t *) next;
   rc = hotplug(coredev, coredev->device, 1);
  }

  if (rc >= 0) {
   notifyee->hotplug = hotplug;
   list_add(&notifyee->entry, &g_smscore_notifyees);
  } else
   kfree(notifyee);
 } else
  rc = -ENOMEM;

 kmutex_unlock(&g_smscore_deviceslock);

 return rc;
}
