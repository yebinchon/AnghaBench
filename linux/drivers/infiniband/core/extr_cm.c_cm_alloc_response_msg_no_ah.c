
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mad_send_buf {int dummy; } ;
struct ib_mad_recv_wc {TYPE_1__* wc; } ;
struct cm_port {int mad_agent; } ;
struct TYPE_2__ {int pkey_index; } ;


 int GFP_ATOMIC ;
 int IB_MGMT_BASE_VERSION ;
 int IB_MGMT_MAD_DATA ;
 int IB_MGMT_MAD_HDR ;
 struct ib_mad_send_buf* ib_create_send_mad (int ,int,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct ib_mad_send_buf *cm_alloc_response_msg_no_ah(struct cm_port *port,
          struct ib_mad_recv_wc *mad_recv_wc)
{
 return ib_create_send_mad(port->mad_agent, 1, mad_recv_wc->wc->pkey_index,
      0, IB_MGMT_MAD_HDR, IB_MGMT_MAD_DATA,
      GFP_ATOMIC,
      IB_MGMT_BASE_VERSION);
}
