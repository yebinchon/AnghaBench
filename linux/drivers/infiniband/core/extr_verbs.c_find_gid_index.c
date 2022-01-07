
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef scalar_t__ u16 ;
struct ib_gid_attr {scalar_t__ gid_type; } ;
struct find_gid_index_context {scalar_t__ gid_type; scalar_t__ vlan_id; } ;


 int rdma_read_gid_l2_fields (struct ib_gid_attr const*,scalar_t__*,int *) ;

__attribute__((used)) static bool find_gid_index(const union ib_gid *gid,
      const struct ib_gid_attr *gid_attr,
      void *context)
{
 struct find_gid_index_context *ctx = context;
 u16 vlan_id = 0xffff;
 int ret;

 if (ctx->gid_type != gid_attr->gid_type)
  return 0;

 ret = rdma_read_gid_l2_fields(gid_attr, &vlan_id, ((void*)0));
 if (ret)
  return 0;

 return ctx->vlan_id == vlan_id;
}
