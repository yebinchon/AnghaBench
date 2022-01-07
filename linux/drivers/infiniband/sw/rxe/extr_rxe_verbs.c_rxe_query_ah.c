
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_ah {int av; } ;
struct rdma_ah_attr {int type; } ;
struct ib_ah {int type; } ;


 int memset (struct rdma_ah_attr*,int ,int) ;
 int rxe_av_to_attr (int *,struct rdma_ah_attr*) ;
 struct rxe_ah* to_rah (struct ib_ah*) ;

__attribute__((used)) static int rxe_query_ah(struct ib_ah *ibah, struct rdma_ah_attr *attr)
{
 struct rxe_ah *ah = to_rah(ibah);

 memset(attr, 0, sizeof(*attr));
 attr->type = ibah->type;
 rxe_av_to_attr(&ah->av, attr);
 return 0;
}
