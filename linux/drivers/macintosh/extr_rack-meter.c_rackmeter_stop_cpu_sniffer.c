
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rackmeter {TYPE_1__* cpu; } ;
struct TYPE_2__ {int sniffer; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void rackmeter_stop_cpu_sniffer(struct rackmeter *rm)
{
 cancel_delayed_work_sync(&rm->cpu[0].sniffer);
 cancel_delayed_work_sync(&rm->cpu[1].sniffer);
}
