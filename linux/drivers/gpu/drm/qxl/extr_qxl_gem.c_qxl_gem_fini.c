
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int dummy; } ;


 int qxl_bo_force_delete (struct qxl_device*) ;

void qxl_gem_fini(struct qxl_device *qdev)
{
 qxl_bo_force_delete(qdev);
}
