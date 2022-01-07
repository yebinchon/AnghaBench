
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int objects; } ;
struct qxl_device {TYPE_1__ gem; } ;


 int INIT_LIST_HEAD (int *) ;

void qxl_gem_init(struct qxl_device *qdev)
{
 INIT_LIST_HEAD(&qdev->gem.objects);
}
