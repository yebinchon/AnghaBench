
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ib_port_immutable {int core_cap_flags; int max_mad_size; int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_port_attr {int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 int HNS_ROCE_CAP_FLAG_ROCE_V1_V2 ;
 int IB_MGMT_MAD_SIZE ;
 int RDMA_CORE_PORT_IBA_ROCE ;
 int RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 TYPE_2__* to_hr_dev (struct ib_device*) ;

__attribute__((used)) static int hns_roce_port_immutable(struct ib_device *ib_dev, u8 port_num,
       struct ib_port_immutable *immutable)
{
 struct ib_port_attr attr;
 int ret;

 ret = ib_query_port(ib_dev, port_num, &attr);
 if (ret)
  return ret;

 immutable->pkey_tbl_len = attr.pkey_tbl_len;
 immutable->gid_tbl_len = attr.gid_tbl_len;

 immutable->max_mad_size = IB_MGMT_MAD_SIZE;
 immutable->core_cap_flags = RDMA_CORE_PORT_IBA_ROCE;
 if (to_hr_dev(ib_dev)->caps.flags & HNS_ROCE_CAP_FLAG_ROCE_V1_V2)
  immutable->core_cap_flags |= RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP;

 return 0;
}
