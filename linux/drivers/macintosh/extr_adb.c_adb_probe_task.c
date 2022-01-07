
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adb_probe_mutex ;
 int do_adb_reset_bus () ;
 int pr_debug (char*) ;
 int up (int *) ;

__attribute__((used)) static int
adb_probe_task(void *x)
{
 pr_debug("adb: starting probe task...\n");
 do_adb_reset_bus();
 pr_debug("adb: finished probe task...\n");

 up(&adb_probe_mutex);

 return 0;
}
