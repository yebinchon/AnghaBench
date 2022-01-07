
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rdma_ah_attr {int type; } ;
struct TYPE_2__ {int stat_rate_sl; int rlid; int rgid; int tclass; int hop_limit; int grh_gid_fl; } ;
struct mlx5_ib_ah {TYPE_1__ av; } ;
struct ib_ah {int type; } ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int memset (struct rdma_ah_attr*,int ,int) ;
 int rdma_ah_set_dgid_raw (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_dlid (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_grh (struct rdma_ah_attr*,int *,int,int,int ,int ) ;
 int rdma_ah_set_sl (struct rdma_ah_attr*,int) ;
 int rdma_ah_set_static_rate (struct rdma_ah_attr*,int) ;
 struct mlx5_ib_ah* to_mah (struct ib_ah*) ;

int mlx5_ib_query_ah(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr)
{
 struct mlx5_ib_ah *ah = to_mah(ibah);
 u32 tmp;

 memset(ah_attr, 0, sizeof(*ah_attr));
 ah_attr->type = ibah->type;

 tmp = be32_to_cpu(ah->av.grh_gid_fl);
 if (tmp & (1 << 30)) {
  rdma_ah_set_grh(ah_attr, ((void*)0),
    tmp & 0xfffff,
    (tmp >> 20) & 0xff,
    ah->av.hop_limit,
    ah->av.tclass);
  rdma_ah_set_dgid_raw(ah_attr, ah->av.rgid);
 }
 rdma_ah_set_dlid(ah_attr, be16_to_cpu(ah->av.rlid));
 rdma_ah_set_static_rate(ah_attr, ah->av.stat_rate_sl >> 4);
 rdma_ah_set_sl(ah_attr, ah->av.stat_rate_sl & 0xf);

 return 0;
}
