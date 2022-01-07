
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_immutable {int gid_tbl_len; int pkey_tbl_len; int core_cap_flags; } ;
struct ib_port_attr {int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_device {int dummy; } ;


 int RDMA_CORE_PORT_IWARP ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;

__attribute__((used)) static int i40iw_port_immutable(struct ib_device *ibdev, u8 port_num,
    struct ib_port_immutable *immutable)
{
 struct ib_port_attr attr;
 int err;

 immutable->core_cap_flags = RDMA_CORE_PORT_IWARP;

 err = ib_query_port(ibdev, port_num, &attr);

 if (err)
  return err;

 immutable->pkey_tbl_len = attr.pkey_tbl_len;
 immutable->gid_tbl_len = attr.gid_tbl_len;

 return 0;
}
