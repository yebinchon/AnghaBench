
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qxl_release_info {int dummy; } qxl_release_info ;
struct qxl_release {int release_offset; struct qxl_bo* release_bo; } ;
struct qxl_device {int dummy; } ;
struct qxl_bo {int dummy; } ;


 int PAGE_MASK ;
 int qxl_bo_kunmap_atomic_page (struct qxl_device*,struct qxl_bo*,void*) ;

void qxl_release_unmap(struct qxl_device *qdev,
         struct qxl_release *release,
         union qxl_release_info *info)
{
 struct qxl_bo *bo = release->release_bo;
 void *ptr;

 ptr = ((void *)info) - (release->release_offset & ~PAGE_MASK);
 qxl_bo_kunmap_atomic_page(qdev, bo, ptr);
}
