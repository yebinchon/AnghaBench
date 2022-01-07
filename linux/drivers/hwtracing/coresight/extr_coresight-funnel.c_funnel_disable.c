
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct funnel_drvdata {scalar_t__ base; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 int dev_dbg (TYPE_1__*,char*,int) ;
 struct funnel_drvdata* dev_get_drvdata (int ) ;
 int dynamic_funnel_disable_hw (struct funnel_drvdata*,int) ;

__attribute__((used)) static void funnel_disable(struct coresight_device *csdev, int inport,
      int outport)
{
 struct funnel_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 if (drvdata->base)
  dynamic_funnel_disable_hw(drvdata, inport);

 dev_dbg(&csdev->dev, "FUNNEL inport %d disabled\n", inport);
}
