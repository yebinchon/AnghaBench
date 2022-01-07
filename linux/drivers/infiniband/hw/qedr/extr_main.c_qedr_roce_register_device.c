
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node_type; } ;
struct qedr_dev {TYPE_1__ ibdev; } ;


 int RDMA_NODE_IB_CA ;
 int ib_set_device_ops (TYPE_1__*,int *) ;
 int qedr_roce_dev_ops ;

__attribute__((used)) static void qedr_roce_register_device(struct qedr_dev *dev)
{
 dev->ibdev.node_type = RDMA_NODE_IB_CA;

 ib_set_device_ops(&dev->ibdev, &qedr_roce_dev_ops);
}
