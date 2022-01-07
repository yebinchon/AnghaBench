
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coresight_device {int dummy; } ;
struct catu_drvdata {int base; } ;


 int CS_LOCK (int ) ;
 int CS_UNLOCK (int ) ;
 int catu_disable_hw (struct catu_drvdata*) ;
 struct catu_drvdata* csdev_to_catu_drvdata (struct coresight_device*) ;

__attribute__((used)) static int catu_disable(struct coresight_device *csdev, void *__unused)
{
 int rc;
 struct catu_drvdata *catu_drvdata = csdev_to_catu_drvdata(csdev);

 CS_UNLOCK(catu_drvdata->base);
 rc = catu_disable_hw(catu_drvdata);
 CS_LOCK(catu_drvdata->base);
 return rc;
}
