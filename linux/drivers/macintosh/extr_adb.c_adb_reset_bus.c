
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __adb_probe_sync ;
 int adb_probe_mutex ;
 int adb_reset_work ;
 int do_adb_reset_bus () ;
 int down (int *) ;
 int schedule_work (int *) ;

int
adb_reset_bus(void)
{
 if (__adb_probe_sync) {
  do_adb_reset_bus();
  return 0;
 }

 down(&adb_probe_mutex);
 schedule_work(&adb_reset_work);
 return 0;
}
