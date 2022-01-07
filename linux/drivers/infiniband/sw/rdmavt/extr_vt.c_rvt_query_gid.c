
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int interface_id; int subnet_prefix; } ;
union ib_gid {TYPE_2__ global; } ;
typedef int u8 ;
struct rvt_ibport {int gid_prefix; } ;
struct TYPE_3__ {int (* get_guid_be ) (struct rvt_dev_info*,struct rvt_ibport*,int,int *) ;} ;
struct rvt_dev_info {TYPE_1__ driver_f; struct rvt_ibport** ports; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 struct rvt_dev_info* ib_to_rvt (struct ib_device*) ;
 int ibport_num_to_idx (struct ib_device*,int ) ;
 int stub1 (struct rvt_dev_info*,struct rvt_ibport*,int,int *) ;

__attribute__((used)) static int rvt_query_gid(struct ib_device *ibdev, u8 port_num,
    int guid_index, union ib_gid *gid)
{
 struct rvt_dev_info *rdi;
 struct rvt_ibport *rvp;
 int port_index;






 port_index = ibport_num_to_idx(ibdev, port_num);
 if (port_index < 0)
  return -EINVAL;

 rdi = ib_to_rvt(ibdev);
 rvp = rdi->ports[port_index];

 gid->global.subnet_prefix = rvp->gid_prefix;

 return rdi->driver_f.get_guid_be(rdi, rvp, guid_index,
      &gid->global.interface_id);
}
