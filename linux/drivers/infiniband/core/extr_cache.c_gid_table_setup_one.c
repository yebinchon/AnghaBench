
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;


 int _gid_table_setup_one (struct ib_device*) ;
 int rdma_roce_rescan_device (struct ib_device*) ;

__attribute__((used)) static int gid_table_setup_one(struct ib_device *ib_dev)
{
 int err;

 err = _gid_table_setup_one(ib_dev);

 if (err)
  return err;

 rdma_roce_rescan_device(ib_dev);

 return err;
}
