
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {struct ib_gid_attr const* sgid_attr; } ;
struct rdma_ah_attr {TYPE_1__ grh; } ;
struct ib_gid_attr {int index; } ;


 int rdma_ah_set_grh (struct rdma_ah_attr*,union ib_gid*,int ,int ,int ,int ) ;

void rdma_move_grh_sgid_attr(struct rdma_ah_attr *attr, union ib_gid *dgid,
        u32 flow_label, u8 hop_limit, u8 traffic_class,
        const struct ib_gid_attr *sgid_attr)
{
 rdma_ah_set_grh(attr, dgid, flow_label, sgid_attr->index, hop_limit,
   traffic_class);
 attr->grh.sgid_attr = sgid_attr;
}
