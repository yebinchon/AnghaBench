
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rxe_av {int network_type; int dgid_addr; int sgid_addr; } ;
struct TYPE_3__ {struct ib_gid_attr* sgid_attr; } ;
struct rdma_ah_attr {TYPE_1__ grh; } ;
struct ib_gid_attr {int gid; } ;
struct TYPE_4__ {int dgid; } ;


 TYPE_2__* rdma_ah_read_grh (struct rdma_ah_attr*) ;
 int rdma_gid2ip (struct sockaddr*,int *) ;
 int rdma_gid_attr_network_type (struct ib_gid_attr const*) ;

void rxe_av_fill_ip_info(struct rxe_av *av, struct rdma_ah_attr *attr)
{
 const struct ib_gid_attr *sgid_attr = attr->grh.sgid_attr;

 rdma_gid2ip((struct sockaddr *)&av->sgid_addr, &sgid_attr->gid);
 rdma_gid2ip((struct sockaddr *)&av->dgid_addr,
      &rdma_ah_read_grh(attr)->dgid);
 av->network_type = rdma_gid_attr_network_type(sgid_attr);
}
