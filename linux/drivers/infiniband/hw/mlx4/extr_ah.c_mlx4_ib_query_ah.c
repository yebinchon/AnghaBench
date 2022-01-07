
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rdma_ah_attr {scalar_t__ type; } ;
struct TYPE_5__ {int g_slid; int dgid; int hop_limit; int gid_index; int sl_tclass_flowlabel; scalar_t__ stat_rate; int dlid; int port_pd; } ;
struct TYPE_4__ {int sl_tclass_flowlabel; } ;
struct TYPE_6__ {TYPE_2__ ib; TYPE_1__ eth; } ;
struct mlx4_ib_ah {TYPE_3__ av; } ;
struct ib_ah {scalar_t__ type; } ;


 scalar_t__ MLX4_STAT_RATE_OFFSET ;
 scalar_t__ RDMA_AH_ATTR_TYPE_ROCE ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int memset (struct rdma_ah_attr*,int ,int) ;
 scalar_t__ mlx4_ib_ah_grh_present (struct mlx4_ib_ah*) ;
 int rdma_ah_set_dgid_raw (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_dlid (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_grh (struct rdma_ah_attr*,int *,int,int ,int ,int) ;
 int rdma_ah_set_path_bits (struct rdma_ah_attr*,int) ;
 int rdma_ah_set_port_num (struct rdma_ah_attr*,int) ;
 int rdma_ah_set_sl (struct rdma_ah_attr*,int) ;
 int rdma_ah_set_static_rate (struct rdma_ah_attr*,scalar_t__) ;
 struct mlx4_ib_ah* to_mah (struct ib_ah*) ;

int mlx4_ib_query_ah(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr)
{
 struct mlx4_ib_ah *ah = to_mah(ibah);
 int port_num = be32_to_cpu(ah->av.ib.port_pd) >> 24;

 memset(ah_attr, 0, sizeof *ah_attr);
 ah_attr->type = ibah->type;

 if (ah_attr->type == RDMA_AH_ATTR_TYPE_ROCE) {
  rdma_ah_set_dlid(ah_attr, 0);
  rdma_ah_set_sl(ah_attr,
          be32_to_cpu(ah->av.eth.sl_tclass_flowlabel)
          >> 29);
 } else {
  rdma_ah_set_dlid(ah_attr, be16_to_cpu(ah->av.ib.dlid));
  rdma_ah_set_sl(ah_attr,
          be32_to_cpu(ah->av.ib.sl_tclass_flowlabel)
          >> 28);
 }

 rdma_ah_set_port_num(ah_attr, port_num);
 if (ah->av.ib.stat_rate)
  rdma_ah_set_static_rate(ah_attr,
     ah->av.ib.stat_rate -
     MLX4_STAT_RATE_OFFSET);
 rdma_ah_set_path_bits(ah_attr, ah->av.ib.g_slid & 0x7F);
 if (mlx4_ib_ah_grh_present(ah)) {
  u32 tc_fl = be32_to_cpu(ah->av.ib.sl_tclass_flowlabel);

  rdma_ah_set_grh(ah_attr, ((void*)0),
    tc_fl & 0xfffff, ah->av.ib.gid_index,
    ah->av.ib.hop_limit,
    tc_fl >> 20);
  rdma_ah_set_dgid_raw(ah_attr, ah->av.ib.dgid);
 }

 return 0;
}
