
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int dummy; } ;
struct qxl_bo {int dummy; } ;


 int PAGE_SIZE ;
 int QXL_GEM_DOMAIN_VRAM ;
 int qxl_bo_create (struct qxl_device*,int ,int,int,int ,int *,struct qxl_bo**) ;

__attribute__((used)) static int qxl_release_bo_alloc(struct qxl_device *qdev,
    struct qxl_bo **bo)
{

 return qxl_bo_create(qdev, PAGE_SIZE, 0, 1,
        QXL_GEM_DOMAIN_VRAM, ((void*)0), bo);
}
