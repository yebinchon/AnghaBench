
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_immutable {int core_cap_flags; int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_port_attr {int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_device {int dummy; } ;


 int RDMA_CORE_PORT_IWARP ;
 int siw_query_port (struct ib_device*,int ,struct ib_port_attr*) ;

int siw_get_port_immutable(struct ib_device *base_dev, u8 port,
      struct ib_port_immutable *port_immutable)
{
 struct ib_port_attr attr;
 int rv = siw_query_port(base_dev, port, &attr);

 if (rv)
  return rv;

 port_immutable->pkey_tbl_len = attr.pkey_tbl_len;
 port_immutable->gid_tbl_len = attr.gid_tbl_len;
 port_immutable->core_cap_flags = RDMA_CORE_PORT_IWARP;

 return 0;
}
