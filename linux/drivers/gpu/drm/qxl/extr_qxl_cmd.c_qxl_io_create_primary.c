
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qxl_surface_create {int type; int flags; struct qxl_device* mem; int stride; int height; int width; int format; } ;
struct qxl_device {struct qxl_bo* primary_bo; TYPE_3__* ram_header; } ;
struct TYPE_5__ {int base; } ;
struct TYPE_4__ {int stride; int height; int width; int format; } ;
struct qxl_bo {int is_primary; TYPE_2__ tbo; TYPE_3__* kptr; TYPE_1__ surf; } ;
struct TYPE_6__ {struct qxl_surface_create create_surface; } ;


 int DRM_DEBUG_DRIVER (char*,struct qxl_device*,TYPE_3__*) ;
 int QXL_IO_CREATE_PRIMARY_ASYNC ;
 int QXL_SURF_FLAG_KEEP_DATA ;
 int QXL_SURF_TYPE_PRIMARY ;
 scalar_t__ WARN_ON (struct qxl_bo*) ;
 int drm_gem_object_get (int *) ;
 struct qxl_device* qxl_bo_physical_address (struct qxl_device*,struct qxl_bo*,int ) ;
 int wait_for_io_cmd (struct qxl_device*,int ,int ) ;

void qxl_io_create_primary(struct qxl_device *qdev, struct qxl_bo *bo)
{
 struct qxl_surface_create *create;

 if (WARN_ON(qdev->primary_bo))
  return;

 DRM_DEBUG_DRIVER("qdev %p, ram_header %p\n", qdev, qdev->ram_header);
 create = &qdev->ram_header->create_surface;
 create->format = bo->surf.format;
 create->width = bo->surf.width;
 create->height = bo->surf.height;
 create->stride = bo->surf.stride;
 create->mem = qxl_bo_physical_address(qdev, bo, 0);

 DRM_DEBUG_DRIVER("mem = %llx, from %p\n", create->mem, bo->kptr);

 create->flags = QXL_SURF_FLAG_KEEP_DATA;
 create->type = QXL_SURF_TYPE_PRIMARY;

 wait_for_io_cmd(qdev, 0, QXL_IO_CREATE_PRIMARY_ASYNC);
 qdev->primary_bo = bo;
 qdev->primary_bo->is_primary = 1;
 drm_gem_object_get(&qdev->primary_bo->tbo.base);
}
