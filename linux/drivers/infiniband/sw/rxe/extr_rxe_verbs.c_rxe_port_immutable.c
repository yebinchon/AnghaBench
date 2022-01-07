
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_immutable {int max_mad_size; int gid_tbl_len; int pkey_tbl_len; int core_cap_flags; } ;
struct ib_port_attr {int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_device {int dummy; } ;


 int IB_MGMT_MAD_SIZE ;
 int RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;

__attribute__((used)) static int rxe_port_immutable(struct ib_device *dev, u8 port_num,
         struct ib_port_immutable *immutable)
{
 int err;
 struct ib_port_attr attr;

 immutable->core_cap_flags = RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP;

 err = ib_query_port(dev, port_num, &attr);
 if (err)
  return err;

 immutable->pkey_tbl_len = attr.pkey_tbl_len;
 immutable->gid_tbl_len = attr.gid_tbl_len;
 immutable->max_mad_size = IB_MGMT_MAD_SIZE;

 return 0;
}
