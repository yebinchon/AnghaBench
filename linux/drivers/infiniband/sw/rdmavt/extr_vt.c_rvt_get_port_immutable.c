
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int max_mad_size; int core_cap_flags; } ;
struct rvt_dev_info {TYPE_1__ dparms; } ;
struct ib_port_immutable {int max_mad_size; int gid_tbl_len; int pkey_tbl_len; int core_cap_flags; } ;
struct ib_port_attr {int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 struct rvt_dev_info* ib_to_rvt (struct ib_device*) ;
 int ibport_num_to_idx (struct ib_device*,int ) ;

__attribute__((used)) static int rvt_get_port_immutable(struct ib_device *ibdev, u8 port_num,
      struct ib_port_immutable *immutable)
{
 struct rvt_dev_info *rdi = ib_to_rvt(ibdev);
 struct ib_port_attr attr;
 int err, port_index;

 port_index = ibport_num_to_idx(ibdev, port_num);
 if (port_index < 0)
  return -EINVAL;

 immutable->core_cap_flags = rdi->dparms.core_cap_flags;

 err = ib_query_port(ibdev, port_num, &attr);
 if (err)
  return err;

 immutable->pkey_tbl_len = attr.pkey_tbl_len;
 immutable->gid_tbl_len = attr.gid_tbl_len;
 immutable->max_mad_size = rdi->dparms.max_mad_size;

 return 0;
}
