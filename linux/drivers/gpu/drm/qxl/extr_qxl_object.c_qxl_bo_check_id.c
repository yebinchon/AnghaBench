
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int dummy; } ;
struct qxl_bo {scalar_t__ type; scalar_t__ surface_id; } ;


 scalar_t__ QXL_GEM_DOMAIN_SURFACE ;
 int qxl_hw_surface_alloc (struct qxl_device*,struct qxl_bo*) ;
 int qxl_surface_id_alloc (struct qxl_device*,struct qxl_bo*) ;

int qxl_bo_check_id(struct qxl_device *qdev, struct qxl_bo *bo)
{
 int ret;

 if (bo->type == QXL_GEM_DOMAIN_SURFACE && bo->surface_id == 0) {

  ret = qxl_surface_id_alloc(qdev, bo);
  if (ret)
   return ret;

  ret = qxl_hw_surface_alloc(qdev, bo);
  if (ret)
   return ret;
 }
 return 0;
}
