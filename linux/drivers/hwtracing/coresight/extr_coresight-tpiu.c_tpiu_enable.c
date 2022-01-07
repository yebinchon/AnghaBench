
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tpiu_drvdata {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; int refcnt; } ;


 int atomic_inc (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct tpiu_drvdata* dev_get_drvdata (int ) ;
 int tpiu_enable_hw (struct tpiu_drvdata*) ;

__attribute__((used)) static int tpiu_enable(struct coresight_device *csdev, u32 mode, void *__unused)
{
 struct tpiu_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 tpiu_enable_hw(drvdata);
 atomic_inc(csdev->refcnt);
 dev_dbg(&csdev->dev, "TPIU enabled\n");
 return 0;
}
