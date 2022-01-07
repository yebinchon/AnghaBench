
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int raw; } ;
struct TYPE_5__ {int traffic_class; int hop_limit; int sgid_index; int flow_label; TYPE_3__ dgid; } ;
struct rxe_av {int port_num; TYPE_2__ grh; } ;
struct rdma_ah_attr {int dummy; } ;
struct TYPE_4__ {int raw; } ;
struct ib_global_route {int traffic_class; int hop_limit; int sgid_index; int flow_label; TYPE_1__ dgid; } ;


 int memcpy (int ,int ,int) ;
 int memset (struct rxe_av*,int ,int) ;
 struct ib_global_route* rdma_ah_read_grh (struct rdma_ah_attr*) ;

void rxe_av_from_attr(u8 port_num, struct rxe_av *av,
       struct rdma_ah_attr *attr)
{
 const struct ib_global_route *grh = rdma_ah_read_grh(attr);

 memset(av, 0, sizeof(*av));
 memcpy(av->grh.dgid.raw, grh->dgid.raw, sizeof(grh->dgid.raw));
 av->grh.flow_label = grh->flow_label;
 av->grh.sgid_index = grh->sgid_index;
 av->grh.hop_limit = grh->hop_limit;
 av->grh.traffic_class = grh->traffic_class;
 av->port_num = port_num;
}
