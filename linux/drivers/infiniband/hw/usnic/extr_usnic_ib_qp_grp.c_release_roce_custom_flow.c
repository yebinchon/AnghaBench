
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_num; } ;
struct usnic_ib_qp_grp_flow {TYPE_1__ usnic_roce; int trans_type; int flow; } ;


 int kfree (struct usnic_ib_qp_grp_flow*) ;
 int usnic_fwd_dealloc_flow (int ) ;
 int usnic_transport_unrsrv_port (int ,int ) ;

__attribute__((used)) static void release_roce_custom_flow(struct usnic_ib_qp_grp_flow *qp_flow)
{
 usnic_fwd_dealloc_flow(qp_flow->flow);
 usnic_transport_unrsrv_port(qp_flow->trans_type,
     qp_flow->usnic_roce.port_num);
 kfree(qp_flow);
}
