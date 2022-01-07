
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocrdma_dev {int dummy; } ;
struct ib_port_immutable {int max_mad_size; int gid_tbl_len; int pkey_tbl_len; int core_cap_flags; } ;
struct ib_port_attr {int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_device {int dummy; } ;


 int IB_MGMT_MAD_SIZE ;
 int RDMA_CORE_CAP_PROT_ROCE_UDP_ENCAP ;
 int RDMA_CORE_PORT_IBA_ROCE ;
 struct ocrdma_dev* get_ocrdma_dev (struct ib_device*) ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 scalar_t__ ocrdma_is_udp_encap_supported (struct ocrdma_dev*) ;

__attribute__((used)) static int ocrdma_port_immutable(struct ib_device *ibdev, u8 port_num,
            struct ib_port_immutable *immutable)
{
 struct ib_port_attr attr;
 struct ocrdma_dev *dev;
 int err;

 dev = get_ocrdma_dev(ibdev);
 immutable->core_cap_flags = RDMA_CORE_PORT_IBA_ROCE;
 if (ocrdma_is_udp_encap_supported(dev))
  immutable->core_cap_flags |= RDMA_CORE_CAP_PROT_ROCE_UDP_ENCAP;

 err = ib_query_port(ibdev, port_num, &attr);
 if (err)
  return err;

 immutable->pkey_tbl_len = attr.pkey_tbl_len;
 immutable->gid_tbl_len = attr.gid_tbl_len;
 immutable->max_mad_size = IB_MGMT_MAD_SIZE;

 return 0;
}
