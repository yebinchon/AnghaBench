
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_release {int dummy; } ;
struct qxl_device {int dummy; } ;
struct qxl_bo {int dummy; } ;


 int DRM_ERROR (char*) ;
 int QXL_GEM_DOMAIN_VRAM ;
 int qxl_bo_create (struct qxl_device*,unsigned long,int,int,int ,int *,struct qxl_bo**) ;
 int qxl_bo_unref (struct qxl_bo**) ;
 int qxl_release_list_add (struct qxl_release*,struct qxl_bo*) ;

int qxl_alloc_bo_reserved(struct qxl_device *qdev,
     struct qxl_release *release,
     unsigned long size,
     struct qxl_bo **_bo)
{
 struct qxl_bo *bo;
 int ret;

 ret = qxl_bo_create(qdev, size, 0 ,
       0, QXL_GEM_DOMAIN_VRAM, ((void*)0), &bo);
 if (ret) {
  DRM_ERROR("failed to allocate VRAM BO\n");
  return ret;
 }
 ret = qxl_release_list_add(release, bo);
 if (ret)
  goto out_unref;

 *_bo = bo;
 return 0;
out_unref:
 qxl_bo_unref(&bo);
 return ret;
}
