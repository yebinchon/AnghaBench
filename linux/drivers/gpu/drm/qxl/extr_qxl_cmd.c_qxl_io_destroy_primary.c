
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qxl_device {TYPE_2__* primary_bo; } ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {int is_primary; TYPE_1__ tbo; } ;


 int QXL_IO_DESTROY_PRIMARY_ASYNC ;
 int drm_gem_object_put_unlocked (int *) ;
 int wait_for_io_cmd (struct qxl_device*,int ,int ) ;

void qxl_io_destroy_primary(struct qxl_device *qdev)
{
 wait_for_io_cmd(qdev, 0, QXL_IO_DESTROY_PRIMARY_ASYNC);
 qdev->primary_bo->is_primary = 0;
 drm_gem_object_put_unlocked(&qdev->primary_bo->tbo.base);
 qdev->primary_bo = ((void*)0);
}
