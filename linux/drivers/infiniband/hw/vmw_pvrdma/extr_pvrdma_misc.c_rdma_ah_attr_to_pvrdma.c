
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmac; } ;
struct rdma_ah_attr {TYPE_1__ roce; } ;
struct pvrdma_ah_attr {int dmac; int port_num; int ah_flags; int static_rate; int src_path_bits; int sl; int dlid; int grh; } ;


 int ib_global_route_to_pvrdma (int *,int ) ;
 int memcpy (int *,int ,int) ;
 int rdma_ah_get_ah_flags (struct rdma_ah_attr const*) ;
 int rdma_ah_get_dlid (struct rdma_ah_attr const*) ;
 int rdma_ah_get_path_bits (struct rdma_ah_attr const*) ;
 int rdma_ah_get_port_num (struct rdma_ah_attr const*) ;
 int rdma_ah_get_sl (struct rdma_ah_attr const*) ;
 int rdma_ah_get_static_rate (struct rdma_ah_attr const*) ;
 int rdma_ah_read_grh (struct rdma_ah_attr const*) ;

void rdma_ah_attr_to_pvrdma(struct pvrdma_ah_attr *dst,
       const struct rdma_ah_attr *src)
{
 ib_global_route_to_pvrdma(&dst->grh, rdma_ah_read_grh(src));
 dst->dlid = rdma_ah_get_dlid(src);
 dst->sl = rdma_ah_get_sl(src);
 dst->src_path_bits = rdma_ah_get_path_bits(src);
 dst->static_rate = rdma_ah_get_static_rate(src);
 dst->ah_flags = rdma_ah_get_ah_flags(src);
 dst->port_num = rdma_ah_get_port_num(src);
 memcpy(&dst->dmac, src->roce.dmac, sizeof(dst->dmac));
}
