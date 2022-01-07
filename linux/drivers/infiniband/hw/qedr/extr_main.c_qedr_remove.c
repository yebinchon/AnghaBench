
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_dev {int ibdev; int cdev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* iwarp_set_engine_affin ) (int ,int) ;} ;


 scalar_t__ IS_IWARP (struct qedr_dev*) ;
 scalar_t__ QEDR_IS_CMT (struct qedr_dev*) ;
 int ib_dealloc_device (int *) ;
 int ib_unregister_device (int *) ;
 int qedr_free_resources (struct qedr_dev*) ;
 int qedr_stop_hw (struct qedr_dev*) ;
 int qedr_sync_free_irqs (struct qedr_dev*) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void qedr_remove(struct qedr_dev *dev)
{



 ib_unregister_device(&dev->ibdev);

 qedr_stop_hw(dev);
 qedr_sync_free_irqs(dev);
 qedr_free_resources(dev);

 if (IS_IWARP(dev) && QEDR_IS_CMT(dev))
  dev->ops->iwarp_set_engine_affin(dev->cdev, 1);

 ib_dealloc_device(&dev->ibdev);
}
