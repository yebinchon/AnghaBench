
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int raw; } ;
struct TYPE_6__ {int traffic_class; int hop_limit; int sgid_index; int flow_label; TYPE_2__ dgid; } ;
struct rxe_av {int port_num; TYPE_3__ grh; } ;
struct rdma_ah_attr {int type; } ;
struct TYPE_4__ {int raw; } ;
struct ib_global_route {int traffic_class; int hop_limit; int sgid_index; int flow_label; TYPE_1__ dgid; } ;


 int IB_AH_GRH ;
 int RDMA_AH_ATTR_TYPE_ROCE ;
 int memcpy (int ,int ,int) ;
 struct ib_global_route* rdma_ah_retrieve_grh (struct rdma_ah_attr*) ;
 int rdma_ah_set_ah_flags (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_port_num (struct rdma_ah_attr*,int ) ;

void rxe_av_to_attr(struct rxe_av *av, struct rdma_ah_attr *attr)
{
 struct ib_global_route *grh = rdma_ah_retrieve_grh(attr);

 attr->type = RDMA_AH_ATTR_TYPE_ROCE;

 memcpy(grh->dgid.raw, av->grh.dgid.raw, sizeof(av->grh.dgid.raw));
 grh->flow_label = av->grh.flow_label;
 grh->sgid_index = av->grh.sgid_index;
 grh->hop_limit = av->grh.hop_limit;
 grh->traffic_class = av->grh.traffic_class;

 rdma_ah_set_ah_flags(attr, IB_AH_GRH);
 rdma_ah_set_port_num(attr, av->port_num);
}
