
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int iw_ifname; int node_type; } ;
struct qedr_dev {TYPE_1__* ndev; TYPE_2__ ibdev; } ;
struct TYPE_3__ {int name; } ;


 int RDMA_NODE_RNIC ;
 int ib_set_device_ops (TYPE_2__*,int *) ;
 int memcpy (int ,int ,int) ;
 int qedr_iw_dev_ops ;

__attribute__((used)) static int qedr_iw_register_device(struct qedr_dev *dev)
{
 dev->ibdev.node_type = RDMA_NODE_RNIC;

 ib_set_device_ops(&dev->ibdev, &qedr_iw_dev_ops);

 memcpy(dev->ibdev.iw_ifname,
        dev->ndev->name, sizeof(dev->ibdev.iw_ifname));

 return 0;
}
