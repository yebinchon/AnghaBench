
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_dev {int ibdev; int edev; } ;


 int EFA_REGS_RESET_NORMAL ;
 int efa_com_dev_reset (int *,int ) ;
 int efa_release_doorbell_bar (struct efa_dev*) ;
 int ib_unregister_device (int *) ;
 int ibdev_info (int *,char*) ;

__attribute__((used)) static void efa_ib_device_remove(struct efa_dev *dev)
{
 efa_com_dev_reset(&dev->edev, EFA_REGS_RESET_NORMAL);
 ibdev_info(&dev->ibdev, "Unregister ib device\n");
 ib_unregister_device(&dev->ibdev);
 efa_release_doorbell_bar(dev);
}
