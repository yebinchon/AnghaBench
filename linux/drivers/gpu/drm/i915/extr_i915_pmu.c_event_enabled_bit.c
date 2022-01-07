
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct perf_event {TYPE_1__ attr; } ;


 unsigned int config_enabled_bit (int ) ;

__attribute__((used)) static unsigned int event_enabled_bit(struct perf_event *event)
{
 return config_enabled_bit(event->attr.config);
}
