
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct perf_event {int destroy; TYPE_1__ attr; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 int ENOENT ;
 int etm_addr_filters_alloc (struct perf_event*) ;
 int etm_event_destroy ;
 TYPE_2__ etm_pmu ;

__attribute__((used)) static int etm_event_init(struct perf_event *event)
{
 int ret = 0;

 if (event->attr.type != etm_pmu.type) {
  ret = -ENOENT;
  goto out;
 }

 ret = etm_addr_filters_alloc(event);
 if (ret)
  goto out;

 event->destroy = etm_event_destroy;
out:
 return ret;
}
