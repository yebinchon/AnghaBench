
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_ah_attr {int dummy; } ;
struct ib_wc {int pkey_index; } ;
struct ib_grh {int dummy; } ;
struct cm_port {int port_num; TYPE_1__* cm_dev; } ;
struct cm_av {int ah_attr; int pkey_index; struct cm_port* port; } ;
struct TYPE_2__ {int ib_device; } ;


 int ib_init_ah_attr_from_wc (int ,int ,struct ib_wc*,struct ib_grh*,struct rdma_ah_attr*) ;
 int rdma_move_ah_attr (int *,struct rdma_ah_attr*) ;

__attribute__((used)) static int cm_init_av_for_lap(struct cm_port *port, struct ib_wc *wc,
         struct ib_grh *grh, struct cm_av *av)
{
 struct rdma_ah_attr new_ah_attr;
 int ret;

 av->port = port;
 av->pkey_index = wc->pkey_index;
 ret = ib_init_ah_attr_from_wc(port->cm_dev->ib_device,
          port->port_num, wc,
          grh, &new_ah_attr);
 if (ret)
  return ret;

 rdma_move_ah_attr(&av->ah_attr, &new_ah_attr);
 return 0;
}
