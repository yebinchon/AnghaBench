
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct sa_path_rec {union ib_gid sgid; } ;
struct ib_device {int dev; } ;
struct cm_work {TYPE_2__* port; } ;
struct TYPE_4__ {int port_num; TYPE_1__* cm_dev; } ;
struct TYPE_3__ {struct ib_device* ib_device; } ;


 int dev_warn (int *,char*) ;
 scalar_t__ ib_is_opa_gid (union ib_gid*) ;
 scalar_t__ rdma_cap_opa_ah (struct ib_device*,int ) ;
 scalar_t__ rdma_query_gid (struct ib_device*,int ,int ,union ib_gid*) ;

__attribute__((used)) static void cm_opa_to_ib_sgid(struct cm_work *work,
         struct sa_path_rec *path)
{
 struct ib_device *dev = work->port->cm_dev->ib_device;
 u8 port_num = work->port->port_num;

 if (rdma_cap_opa_ah(dev, port_num) &&
     (ib_is_opa_gid(&path->sgid))) {
  union ib_gid sgid;

  if (rdma_query_gid(dev, port_num, 0, &sgid)) {
   dev_warn(&dev->dev,
     "Error updating sgid in CM request\n");
   return;
  }

  path->sgid = sgid;
 }
}
