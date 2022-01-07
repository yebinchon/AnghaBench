
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handler; scalar_t__ busy; } ;


 int ENODEV ;
 TYPE_1__* adb_handler ;
 int adb_handler_lock ;
 int adb_handler_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 int yield () ;

int
adb_unregister(int index)
{
 int ret = -ENODEV;

 mutex_lock(&adb_handler_mutex);
 write_lock_irq(&adb_handler_lock);
 if (adb_handler[index].handler) {
  while(adb_handler[index].busy) {
   write_unlock_irq(&adb_handler_lock);
   yield();
   write_lock_irq(&adb_handler_lock);
  }
  ret = 0;
  adb_handler[index].handler = ((void*)0);
 }
 write_unlock_irq(&adb_handler_lock);
 mutex_unlock(&adb_handler_mutex);
 return ret;
}
