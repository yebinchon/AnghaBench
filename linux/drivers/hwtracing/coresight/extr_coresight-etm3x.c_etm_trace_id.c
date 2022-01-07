
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etm_drvdata {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 struct etm_drvdata* dev_get_drvdata (int ) ;
 int etm_get_trace_id (struct etm_drvdata*) ;

__attribute__((used)) static int etm_trace_id(struct coresight_device *csdev)
{
 struct etm_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 return etm_get_trace_id(drvdata);
}
