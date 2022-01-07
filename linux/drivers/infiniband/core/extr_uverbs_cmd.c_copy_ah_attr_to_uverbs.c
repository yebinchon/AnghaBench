
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_ah_attr {int dummy; } ;
struct ib_uverbs_qp_dest {int is_global; int port_num; int traffic_class; int hop_limit; int sgid_index; int flow_label; int dgid; int static_rate; int src_path_bits; int sl; int dlid; } ;
struct TYPE_2__ {int raw; } ;
struct ib_global_route {int traffic_class; int hop_limit; int sgid_index; int flow_label; TYPE_1__ dgid; } ;


 int IB_AH_GRH ;
 int memcpy (int ,int ,int) ;
 int rdma_ah_get_ah_flags (struct rdma_ah_attr*) ;
 int rdma_ah_get_dlid (struct rdma_ah_attr*) ;
 int rdma_ah_get_path_bits (struct rdma_ah_attr*) ;
 int rdma_ah_get_port_num (struct rdma_ah_attr*) ;
 int rdma_ah_get_sl (struct rdma_ah_attr*) ;
 int rdma_ah_get_static_rate (struct rdma_ah_attr*) ;
 struct ib_global_route* rdma_ah_read_grh (struct rdma_ah_attr*) ;

__attribute__((used)) static void copy_ah_attr_to_uverbs(struct ib_uverbs_qp_dest *uverb_attr,
       struct rdma_ah_attr *rdma_attr)
{
 const struct ib_global_route *grh;

 uverb_attr->dlid = rdma_ah_get_dlid(rdma_attr);
 uverb_attr->sl = rdma_ah_get_sl(rdma_attr);
 uverb_attr->src_path_bits = rdma_ah_get_path_bits(rdma_attr);
 uverb_attr->static_rate = rdma_ah_get_static_rate(rdma_attr);
 uverb_attr->is_global = !!(rdma_ah_get_ah_flags(rdma_attr) &
      IB_AH_GRH);
 if (uverb_attr->is_global) {
  grh = rdma_ah_read_grh(rdma_attr);
  memcpy(uverb_attr->dgid, grh->dgid.raw, 16);
  uverb_attr->flow_label = grh->flow_label;
  uverb_attr->sgid_index = grh->sgid_index;
  uverb_attr->hop_limit = grh->hop_limit;
  uverb_attr->traffic_class = grh->traffic_class;
 }
 uverb_attr->port_num = rdma_ah_get_port_num(rdma_attr);
}
