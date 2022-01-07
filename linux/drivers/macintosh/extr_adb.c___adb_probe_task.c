
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int adb_probe_task ;
 int kthread_run (int ,int *,char*) ;

__attribute__((used)) static void
__adb_probe_task(struct work_struct *bullshit)
{
 kthread_run(adb_probe_task, ((void*)0), "kadbprobe");
}
