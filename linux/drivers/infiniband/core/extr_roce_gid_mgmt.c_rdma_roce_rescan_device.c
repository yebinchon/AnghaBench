
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;


 int enum_all_gids_of_dev_cb ;
 int ib_enum_roce_netdev (struct ib_device*,int ,int *,int ,int *) ;
 int pass_all_filter ;

void rdma_roce_rescan_device(struct ib_device *ib_dev)
{
 ib_enum_roce_netdev(ib_dev, pass_all_filter, ((void*)0),
       enum_all_gids_of_dev_cb, ((void*)0));
}
