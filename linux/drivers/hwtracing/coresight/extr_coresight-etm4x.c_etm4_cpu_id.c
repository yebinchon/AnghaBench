
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etmv4_drvdata {int cpu; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 struct etmv4_drvdata* dev_get_drvdata (int ) ;

__attribute__((used)) static int etm4_cpu_id(struct coresight_device *csdev)
{
 struct etmv4_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 return drvdata->cpu;
}
