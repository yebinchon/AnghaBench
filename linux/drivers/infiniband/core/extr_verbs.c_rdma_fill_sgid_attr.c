
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ib_gid_attr* sgid_attr; } ;
struct rdma_ah_attr {int ah_flags; int port_num; TYPE_1__ grh; } ;
struct ib_global_route {struct ib_gid_attr const* sgid_attr; int sgid_index; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;


 int IB_AH_GRH ;
 scalar_t__ IS_ERR (struct ib_gid_attr const*) ;
 int PTR_ERR (struct ib_gid_attr const*) ;
 struct ib_global_route* rdma_ah_retrieve_grh (struct rdma_ah_attr*) ;
 int rdma_check_ah_attr (struct ib_device*,struct rdma_ah_attr*) ;
 struct ib_gid_attr* rdma_get_gid_attr (struct ib_device*,int ,int ) ;

__attribute__((used)) static int rdma_fill_sgid_attr(struct ib_device *device,
          struct rdma_ah_attr *ah_attr,
          const struct ib_gid_attr **old_sgid_attr)
{
 const struct ib_gid_attr *sgid_attr;
 struct ib_global_route *grh;
 int ret;

 *old_sgid_attr = ah_attr->grh.sgid_attr;

 ret = rdma_check_ah_attr(device, ah_attr);
 if (ret)
  return ret;

 if (!(ah_attr->ah_flags & IB_AH_GRH))
  return 0;

 grh = rdma_ah_retrieve_grh(ah_attr);
 if (grh->sgid_attr)
  return 0;

 sgid_attr =
  rdma_get_gid_attr(device, ah_attr->port_num, grh->sgid_index);
 if (IS_ERR(sgid_attr))
  return PTR_ERR(sgid_attr);


 grh->sgid_attr = sgid_attr;
 return 0;
}
