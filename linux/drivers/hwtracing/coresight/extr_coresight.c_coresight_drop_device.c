
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct coresight_device {scalar_t__ type; TYPE_1__ dev; TYPE_3__* pdata; } ;
struct TYPE_6__ {int nr_outport; TYPE_2__* conns; } ;
struct TYPE_5__ {struct coresight_device* child_dev; } ;


 scalar_t__ CORESIGHT_DEV_TYPE_HELPER ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void coresight_drop_device(struct coresight_device *csdev)
{
 int i;

 pm_runtime_put(csdev->dev.parent);
 for (i = 0; i < csdev->pdata->nr_outport; i++) {
  struct coresight_device *child;

  child = csdev->pdata->conns[i].child_dev;
  if (child && child->type == CORESIGHT_DEV_TYPE_HELPER)
   pm_runtime_put(child->dev.parent);
 }
}
