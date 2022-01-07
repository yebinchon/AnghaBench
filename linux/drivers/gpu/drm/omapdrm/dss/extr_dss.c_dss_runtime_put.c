
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DSSDBG (char*) ;
 int EBUSY ;
 int ENOSYS ;
 int WARN_ON (int) ;
 int pm_runtime_put_sync (int *) ;

void dss_runtime_put(struct dss_device *dss)
{
 int r;

 DSSDBG("dss_runtime_put\n");

 r = pm_runtime_put_sync(&dss->pdev->dev);
 WARN_ON(r < 0 && r != -ENOSYS && r != -EBUSY);
}
