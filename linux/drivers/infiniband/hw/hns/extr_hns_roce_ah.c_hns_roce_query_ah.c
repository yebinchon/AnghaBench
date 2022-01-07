
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_ah_attr {int dummy; } ;
struct ib_ah {int dummy; } ;
struct TYPE_2__ {int dgid; int tclass; int hop_limit; int gid_index; int flowlabel; int stat_rate; int port; int sl; } ;
struct hns_roce_ah {TYPE_1__ av; } ;


 int memset (struct rdma_ah_attr*,int ,int) ;
 int rdma_ah_set_dgid_raw (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_grh (struct rdma_ah_attr*,int *,int ,int ,int ,int ) ;
 int rdma_ah_set_port_num (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_sl (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_static_rate (struct rdma_ah_attr*,int ) ;
 struct hns_roce_ah* to_hr_ah (struct ib_ah*) ;

int hns_roce_query_ah(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr)
{
 struct hns_roce_ah *ah = to_hr_ah(ibah);

 memset(ah_attr, 0, sizeof(*ah_attr));

 rdma_ah_set_sl(ah_attr, ah->av.sl);
 rdma_ah_set_port_num(ah_attr, ah->av.port);
 rdma_ah_set_static_rate(ah_attr, ah->av.stat_rate);
 rdma_ah_set_grh(ah_attr, ((void*)0), ah->av.flowlabel,
   ah->av.gid_index, ah->av.hop_limit, ah->av.tclass);
 rdma_ah_set_dgid_raw(ah_attr, ah->av.dgid);

 return 0;
}
