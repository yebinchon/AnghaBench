
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct replicator_drvdata {scalar_t__ base; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 int dev_dbg (TYPE_1__*,char*) ;
 struct replicator_drvdata* dev_get_drvdata (int ) ;
 int dynamic_replicator_enable (struct replicator_drvdata*,int,int) ;

__attribute__((used)) static int replicator_enable(struct coresight_device *csdev, int inport,
        int outport)
{
 int rc = 0;
 struct replicator_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 if (drvdata->base)
  rc = dynamic_replicator_enable(drvdata, inport, outport);
 if (!rc)
  dev_dbg(&csdev->dev, "REPLICATOR enabled\n");
 return rc;
}
