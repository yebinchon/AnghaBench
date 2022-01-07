
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct coresight_device {scalar_t__ type; TYPE_3__ dev; TYPE_2__* pdata; } ;
struct TYPE_5__ {int nr_outport; TYPE_1__* conns; } ;
struct TYPE_4__ {struct coresight_device* child_dev; } ;


 scalar_t__ CORESIGHT_DEV_TYPE_HELPER ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static void coresight_grab_device(struct coresight_device *csdev)
{
 int i;

 for (i = 0; i < csdev->pdata->nr_outport; i++) {
  struct coresight_device *child;

  child = csdev->pdata->conns[i].child_dev;
  if (child && child->type == CORESIGHT_DEV_TYPE_HELPER)
   pm_runtime_get_sync(child->dev.parent);
 }
 pm_runtime_get_sync(csdev->dev.parent);
}
