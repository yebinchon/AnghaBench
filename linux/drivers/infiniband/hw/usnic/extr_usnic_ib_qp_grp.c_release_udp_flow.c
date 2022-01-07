
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sock; } ;
struct usnic_ib_qp_grp_flow {TYPE_1__ udp; int flow; } ;


 int kfree (struct usnic_ib_qp_grp_flow*) ;
 int usnic_fwd_dealloc_flow (int ) ;
 int usnic_transport_put_socket (int ) ;

__attribute__((used)) static void release_udp_flow(struct usnic_ib_qp_grp_flow *qp_flow)
{
 usnic_fwd_dealloc_flow(qp_flow->flow);
 usnic_transport_put_socket(qp_flow->udp.sock);
 kfree(qp_flow);
}
