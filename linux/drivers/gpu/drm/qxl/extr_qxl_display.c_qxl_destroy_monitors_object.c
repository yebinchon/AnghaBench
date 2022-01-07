
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_device {int monitors_config_bo; TYPE_1__* ram_header; int * monitors_config; } ;
struct TYPE_2__ {scalar_t__ monitors_config; } ;


 int qxl_bo_kunmap (int ) ;
 int qxl_bo_unpin (int ) ;
 int qxl_bo_unref (int *) ;

int qxl_destroy_monitors_object(struct qxl_device *qdev)
{
 int ret;

 qdev->monitors_config = ((void*)0);
 qdev->ram_header->monitors_config = 0;

 qxl_bo_kunmap(qdev->monitors_config_bo);
 ret = qxl_bo_unpin(qdev->monitors_config_bo);
 if (ret)
  return ret;

 qxl_bo_unref(&qdev->monitors_config_bo);
 return 0;
}
