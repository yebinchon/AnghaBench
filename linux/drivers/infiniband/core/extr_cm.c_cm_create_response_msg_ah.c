
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_mad_send_buf {struct ib_ah* ah; } ;
struct TYPE_6__ {int grh; } ;
struct ib_mad_recv_wc {TYPE_3__ recv_buf; int wc; } ;
struct ib_ah {int dummy; } ;
struct cm_port {int port_num; TYPE_2__* mad_agent; } ;
struct TYPE_5__ {TYPE_1__* qp; } ;
struct TYPE_4__ {int pd; } ;


 scalar_t__ IS_ERR (struct ib_ah*) ;
 int PTR_ERR (struct ib_ah*) ;
 struct ib_ah* ib_create_ah_from_wc (int ,int ,int ,int ) ;

__attribute__((used)) static int cm_create_response_msg_ah(struct cm_port *port,
         struct ib_mad_recv_wc *mad_recv_wc,
         struct ib_mad_send_buf *msg)
{
 struct ib_ah *ah;

 ah = ib_create_ah_from_wc(port->mad_agent->qp->pd, mad_recv_wc->wc,
      mad_recv_wc->recv_buf.grh, port->port_num);
 if (IS_ERR(ah))
  return PTR_ERR(ah);

 msg->ah = ah;
 return 0;
}
