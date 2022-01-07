
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct etm_filters* addr_filters; } ;
struct perf_event {TYPE_1__ hw; } ;
struct etmv4_drvdata {scalar_t__ cpu; scalar_t__ base; } ;
struct etm_filters {int ssstatus; } ;
struct TYPE_4__ {int parent; } ;
struct coresight_device {TYPE_2__ dev; } ;


 int BIT (int) ;
 int EINVAL ;
 scalar_t__ TRCVICTLR ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int etm4_disable_hw (struct etmv4_drvdata*) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static int etm4_disable_perf(struct coresight_device *csdev,
        struct perf_event *event)
{
 u32 control;
 struct etm_filters *filters = event->hw.addr_filters;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 if (WARN_ON_ONCE(drvdata->cpu != smp_processor_id()))
  return -EINVAL;

 etm4_disable_hw(drvdata);







 control = readl_relaxed(drvdata->base + TRCVICTLR);

 filters->ssstatus = (control & BIT(9));

 return 0;
}
