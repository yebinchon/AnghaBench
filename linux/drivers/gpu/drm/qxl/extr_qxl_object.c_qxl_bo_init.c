
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int dummy; } ;


 int qxl_ttm_init (struct qxl_device*) ;

int qxl_bo_init(struct qxl_device *qdev)
{
 return qxl_ttm_init(qdev);
}
