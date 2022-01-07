
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct perf_event {TYPE_1__ attr; } ;


 int is_engine_config (int ) ;

__attribute__((used)) static bool is_engine_event(struct perf_event *event)
{
 return is_engine_config(event->attr.config);
}
