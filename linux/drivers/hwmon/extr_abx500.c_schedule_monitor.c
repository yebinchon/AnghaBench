
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abx500_temp {int work_active; int work; } ;


 int DEFAULT_MONITOR_DELAY ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static inline void schedule_monitor(struct abx500_temp *data)
{
 data->work_active = 1;
 schedule_delayed_work(&data->work, DEFAULT_MONITOR_DELAY);
}
