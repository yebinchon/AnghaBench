
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpiu_drvdata {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; int refcnt; } ;


 int EBUSY ;
 scalar_t__ atomic_dec_return (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct tpiu_drvdata* dev_get_drvdata (int ) ;
 int tpiu_disable_hw (struct tpiu_drvdata*) ;

__attribute__((used)) static int tpiu_disable(struct coresight_device *csdev)
{
 struct tpiu_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 if (atomic_dec_return(csdev->refcnt))
  return -EBUSY;

 tpiu_disable_hw(drvdata);

 dev_dbg(&csdev->dev, "TPIU disabled\n");
 return 0;
}
