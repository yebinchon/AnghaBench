
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_ah_attr {int type; } ;
struct ib_uverbs_qp_dest {int port_num; int static_rate; int src_path_bits; int sl; int dlid; int dgid; int traffic_class; int hop_limit; int sgid_index; int flow_label; scalar_t__ is_global; } ;
struct ib_device {int dummy; } ;


 int rdma_ah_find_type (struct ib_device*,int ) ;
 int rdma_ah_set_ah_flags (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_dgid_raw (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_dlid (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_grh (struct rdma_ah_attr*,int *,int ,int ,int ,int ) ;
 int rdma_ah_set_make_grd (struct rdma_ah_attr*,int) ;
 int rdma_ah_set_path_bits (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_port_num (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_sl (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_static_rate (struct rdma_ah_attr*,int ) ;

__attribute__((used)) static void copy_ah_attr_from_uverbs(struct ib_device *dev,
         struct rdma_ah_attr *rdma_attr,
         struct ib_uverbs_qp_dest *uverb_attr)
{
 rdma_attr->type = rdma_ah_find_type(dev, uverb_attr->port_num);
 if (uverb_attr->is_global) {
  rdma_ah_set_grh(rdma_attr, ((void*)0),
    uverb_attr->flow_label,
    uverb_attr->sgid_index,
    uverb_attr->hop_limit,
    uverb_attr->traffic_class);
  rdma_ah_set_dgid_raw(rdma_attr, uverb_attr->dgid);
 } else {
  rdma_ah_set_ah_flags(rdma_attr, 0);
 }
 rdma_ah_set_dlid(rdma_attr, uverb_attr->dlid);
 rdma_ah_set_sl(rdma_attr, uverb_attr->sl);
 rdma_ah_set_path_bits(rdma_attr, uverb_attr->src_path_bits);
 rdma_ah_set_static_rate(rdma_attr, uverb_attr->static_rate);
 rdma_ah_set_port_num(rdma_attr, uverb_attr->port_num);
 rdma_ah_set_make_grd(rdma_attr, 0);
}
