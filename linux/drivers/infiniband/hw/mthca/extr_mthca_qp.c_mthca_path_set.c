
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rdma_ah_attr {int dummy; } ;
struct mthca_qp_path {int g_mylmc; scalar_t__ mgid_index; void* sl_tclass_flowlabel; int rgid; int hop_limit; int static_rate; int rlid; } ;
struct TYPE_3__ {scalar_t__ gid_table_len; } ;
struct mthca_dev {TYPE_1__ limits; } ;
struct TYPE_4__ {int raw; } ;
struct ib_global_route {scalar_t__ sgid_index; int traffic_class; int flow_label; TYPE_2__ dgid; int hop_limit; } ;


 int IB_AH_GRH ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int memcpy (int ,int ,int) ;
 int mthca_dbg (struct mthca_dev*,char*,scalar_t__,scalar_t__) ;
 int mthca_get_rate (struct mthca_dev*,int ,int ) ;
 int rdma_ah_get_ah_flags (struct rdma_ah_attr const*) ;
 int rdma_ah_get_dlid (struct rdma_ah_attr const*) ;
 int rdma_ah_get_path_bits (struct rdma_ah_attr const*) ;
 int rdma_ah_get_sl (struct rdma_ah_attr const*) ;
 int rdma_ah_get_static_rate (struct rdma_ah_attr const*) ;
 struct ib_global_route* rdma_ah_read_grh (struct rdma_ah_attr const*) ;

__attribute__((used)) static int mthca_path_set(struct mthca_dev *dev, const struct rdma_ah_attr *ah,
     struct mthca_qp_path *path, u8 port)
{
 path->g_mylmc = rdma_ah_get_path_bits(ah) & 0x7f;
 path->rlid = cpu_to_be16(rdma_ah_get_dlid(ah));
 path->static_rate = mthca_get_rate(dev, rdma_ah_get_static_rate(ah),
        port);

 if (rdma_ah_get_ah_flags(ah) & IB_AH_GRH) {
  const struct ib_global_route *grh = rdma_ah_read_grh(ah);

  if (grh->sgid_index >= dev->limits.gid_table_len) {
   mthca_dbg(dev, "sgid_index (%u) too large. max is %d\n",
      grh->sgid_index,
      dev->limits.gid_table_len - 1);
   return -1;
  }

  path->g_mylmc |= 1 << 7;
  path->mgid_index = grh->sgid_index;
  path->hop_limit = grh->hop_limit;
  path->sl_tclass_flowlabel =
   cpu_to_be32((rdma_ah_get_sl(ah) << 28) |
        (grh->traffic_class << 20) |
        (grh->flow_label));
  memcpy(path->rgid, grh->dgid.raw, 16);
 } else {
  path->sl_tclass_flowlabel = cpu_to_be32(rdma_ah_get_sl(ah) <<
       28);
 }

 return 0;
}
