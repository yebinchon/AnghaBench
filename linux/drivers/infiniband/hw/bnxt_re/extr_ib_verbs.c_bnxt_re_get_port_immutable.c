
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_immutable {int max_mad_size; int core_cap_flags; int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_port_attr {int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int IB_MGMT_MAD_SIZE ;
 int RDMA_CORE_CAP_PROT_ROCE_UDP_ENCAP ;
 int RDMA_CORE_PORT_IBA_ROCE ;
 scalar_t__ bnxt_re_query_port (struct ib_device*,int ,struct ib_port_attr*) ;

int bnxt_re_get_port_immutable(struct ib_device *ibdev, u8 port_num,
          struct ib_port_immutable *immutable)
{
 struct ib_port_attr port_attr;

 if (bnxt_re_query_port(ibdev, port_num, &port_attr))
  return -EINVAL;

 immutable->pkey_tbl_len = port_attr.pkey_tbl_len;
 immutable->gid_tbl_len = port_attr.gid_tbl_len;
 immutable->core_cap_flags = RDMA_CORE_PORT_IBA_ROCE;
 immutable->core_cap_flags |= RDMA_CORE_CAP_PROT_ROCE_UDP_ENCAP;
 immutable->max_mad_size = IB_MGMT_MAD_SIZE;
 return 0;
}
