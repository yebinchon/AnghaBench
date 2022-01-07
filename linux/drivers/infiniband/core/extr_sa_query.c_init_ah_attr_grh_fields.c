
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sa_path_rec {int traffic_class; int hop_limit; int flow_label; int dgid; int sgid; } ;
struct rdma_ah_attr {int dummy; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;


 scalar_t__ IS_ERR (struct ib_gid_attr const*) ;
 int PTR_ERR (struct ib_gid_attr const*) ;
 int be32_to_cpu (int ) ;
 struct ib_gid_attr* rdma_find_gid_by_port (struct ib_device*,int *,int,int ,int *) ;
 int rdma_hold_gid_attr (struct ib_gid_attr const*) ;
 int rdma_move_grh_sgid_attr (struct rdma_ah_attr*,int *,int ,int ,int ,struct ib_gid_attr const*) ;
 int sa_conv_pathrec_to_gid_type (struct sa_path_rec*) ;

__attribute__((used)) static int init_ah_attr_grh_fields(struct ib_device *device, u8 port_num,
       struct sa_path_rec *rec,
       struct rdma_ah_attr *ah_attr,
       const struct ib_gid_attr *gid_attr)
{
 enum ib_gid_type type = sa_conv_pathrec_to_gid_type(rec);

 if (!gid_attr) {
  gid_attr = rdma_find_gid_by_port(device, &rec->sgid, type,
       port_num, ((void*)0));
  if (IS_ERR(gid_attr))
   return PTR_ERR(gid_attr);
 } else
  rdma_hold_gid_attr(gid_attr);

 rdma_move_grh_sgid_attr(ah_attr, &rec->dgid,
    be32_to_cpu(rec->flow_label),
    rec->hop_limit, rec->traffic_class,
    gid_attr);
 return 0;
}
