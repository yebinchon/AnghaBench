
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int ibdev; int eqd_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int ib_unregister_device (int *) ;
 int ocrdma_cleanup_hw (struct ocrdma_dev*) ;
 int ocrdma_free_resources (struct ocrdma_dev*) ;
 int ocrdma_rem_port_stats (struct ocrdma_dev*) ;
 int ocrdma_remove_free (struct ocrdma_dev*) ;

__attribute__((used)) static void ocrdma_remove(struct ocrdma_dev *dev)
{



 cancel_delayed_work_sync(&dev->eqd_work);
 ib_unregister_device(&dev->ibdev);

 ocrdma_rem_port_stats(dev);
 ocrdma_free_resources(dev);
 ocrdma_cleanup_hw(dev);
 ocrdma_remove_free(dev);
}
