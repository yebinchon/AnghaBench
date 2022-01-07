
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etm_event_data {int snk_config; int mask; } ;
struct coresight_device {int dummy; } ;
typedef int cpumask_t ;
struct TYPE_2__ {int (* free_buffer ) (int ) ;} ;


 scalar_t__ WARN_ON (int ) ;
 struct coresight_device* coresight_get_sink (int ) ;
 int cpumask_empty (int *) ;
 int cpumask_first (int *) ;
 int etm_event_cpu_path (struct etm_event_data*,int) ;
 TYPE_1__* sink_ops (struct coresight_device*) ;
 int stub1 (int ) ;

__attribute__((used)) static void free_sink_buffer(struct etm_event_data *event_data)
{
 int cpu;
 cpumask_t *mask = &event_data->mask;
 struct coresight_device *sink;

 if (WARN_ON(cpumask_empty(mask)))
  return;

 if (!event_data->snk_config)
  return;

 cpu = cpumask_first(mask);
 sink = coresight_get_sink(etm_event_cpu_path(event_data, cpu));
 sink_ops(sink)->free_buffer(event_data->snk_config);
}
