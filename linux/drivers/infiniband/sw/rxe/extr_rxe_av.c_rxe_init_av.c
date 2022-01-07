
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_av {int dmac; } ;
struct TYPE_2__ {int dmac; } ;
struct rdma_ah_attr {TYPE_1__ roce; } ;


 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 int rdma_ah_get_port_num (struct rdma_ah_attr*) ;
 int rxe_av_fill_ip_info (struct rxe_av*,struct rdma_ah_attr*) ;
 int rxe_av_from_attr (int ,struct rxe_av*,struct rdma_ah_attr*) ;

void rxe_init_av(struct rdma_ah_attr *attr, struct rxe_av *av)
{
 rxe_av_from_attr(rdma_ah_get_port_num(attr), av, attr);
 rxe_av_fill_ip_info(av, attr);
 memcpy(av->dmac, attr->roce.dmac, ETH_ALEN);
}
