
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adb_ids {int nids; int* id; } ;
struct TYPE_2__ {int original_address; int handler_id; void (* handler ) (unsigned char*,int,int) ;} ;


 TYPE_1__* adb_handler ;
 int adb_handler_lock ;
 int adb_handler_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 scalar_t__ try_handler_change (int,int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int
adb_register(int default_id, int handler_id, struct adb_ids *ids,
      void (*handler)(unsigned char *, int, int))
{
 int i;

 mutex_lock(&adb_handler_mutex);
 ids->nids = 0;
 for (i = 1; i < 16; i++) {
  if ((adb_handler[i].original_address == default_id) &&
      (!handler_id || (handler_id == adb_handler[i].handler_id) ||
      try_handler_change(i, handler_id))) {
   if (adb_handler[i].handler != 0) {
    pr_err("Two handlers for ADB device %d\n",
           default_id);
    continue;
   }
   write_lock_irq(&adb_handler_lock);
   adb_handler[i].handler = handler;
   write_unlock_irq(&adb_handler_lock);
   ids->id[ids->nids++] = i;
  }
 }
 mutex_unlock(&adb_handler_mutex);
 return ids->nids;
}
