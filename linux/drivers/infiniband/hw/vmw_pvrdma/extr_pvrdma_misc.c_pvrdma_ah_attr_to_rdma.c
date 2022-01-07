
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmac; } ;
struct rdma_ah_attr {TYPE_1__ roce; int type; } ;
struct pvrdma_ah_attr {int dmac; int port_num; int ah_flags; int static_rate; int src_path_bits; int sl; int dlid; int grh; } ;


 int ETH_ALEN ;
 int RDMA_AH_ATTR_TYPE_ROCE ;
 int memcpy (int ,int *,int ) ;
 int pvrdma_global_route_to_ib (int ,int *) ;
 int rdma_ah_retrieve_grh (struct rdma_ah_attr*) ;
 int rdma_ah_set_ah_flags (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_dlid (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_path_bits (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_port_num (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_sl (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_static_rate (struct rdma_ah_attr*,int ) ;

void pvrdma_ah_attr_to_rdma(struct rdma_ah_attr *dst,
       const struct pvrdma_ah_attr *src)
{
 dst->type = RDMA_AH_ATTR_TYPE_ROCE;
 pvrdma_global_route_to_ib(rdma_ah_retrieve_grh(dst), &src->grh);
 rdma_ah_set_dlid(dst, src->dlid);
 rdma_ah_set_sl(dst, src->sl);
 rdma_ah_set_path_bits(dst, src->src_path_bits);
 rdma_ah_set_static_rate(dst, src->static_rate);
 rdma_ah_set_ah_flags(dst, src->ah_flags);
 rdma_ah_set_port_num(dst, src->port_num);
 memcpy(dst->roce.dmac, &src->dmac, ETH_ALEN);
}
