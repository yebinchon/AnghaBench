
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int ibdev; int mbx_cmd; } ;


 int ib_dealloc_device (int *) ;
 int kfree (int ) ;

__attribute__((used)) static void ocrdma_remove_free(struct ocrdma_dev *dev)
{

 kfree(dev->mbx_cmd);
 ib_dealloc_device(&dev->ibdev);
}
