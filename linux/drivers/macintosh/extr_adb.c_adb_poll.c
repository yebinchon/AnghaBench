
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* poll ) () ;} ;


 TYPE_1__* adb_controller ;
 int stub1 () ;

void
adb_poll(void)
{
 if ((adb_controller == ((void*)0))||(adb_controller->poll == ((void*)0)))
  return;
 adb_controller->poll();
}
