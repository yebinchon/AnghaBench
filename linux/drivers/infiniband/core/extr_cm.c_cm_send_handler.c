
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ib_mad_send_wc {int status; struct ib_mad_send_buf* send_buf; } ;
struct ib_mad_send_buf {int retries; scalar_t__* context; scalar_t__ mad; } ;
struct ib_mad_hdr {int attr_id; } ;
struct ib_mad_agent {struct cm_port* context; } ;
struct cm_port {TYPE_1__* counter_group; } ;
struct TYPE_2__ {int * counter; } ;


 size_t CM_ATTR_ID_OFFSET ;
 size_t CM_REJ_COUNTER ;
 size_t CM_XMIT ;
 size_t CM_XMIT_RETRIES ;


 int atomic_long_add (int,int *) ;
 size_t be16_to_cpu (int ) ;
 int cm_free_msg (struct ib_mad_send_buf*) ;
 int cm_process_send_error (struct ib_mad_send_buf*,int) ;

__attribute__((used)) static void cm_send_handler(struct ib_mad_agent *mad_agent,
       struct ib_mad_send_wc *mad_send_wc)
{
 struct ib_mad_send_buf *msg = mad_send_wc->send_buf;
 struct cm_port *port;
 u16 attr_index;

 port = mad_agent->context;
 attr_index = be16_to_cpu(((struct ib_mad_hdr *)
      msg->mad)->attr_id) - CM_ATTR_ID_OFFSET;






 if (!msg->context[0] && (attr_index != CM_REJ_COUNTER))
  msg->retries = 1;

 atomic_long_add(1 + msg->retries,
   &port->counter_group[CM_XMIT].counter[attr_index]);
 if (msg->retries)
  atomic_long_add(msg->retries,
    &port->counter_group[CM_XMIT_RETRIES].
    counter[attr_index]);

 switch (mad_send_wc->status) {
 case 129:
 case 128:
  cm_free_msg(msg);
  break;
 default:
  if (msg->context[0] && msg->context[1])
   cm_process_send_error(msg, mad_send_wc->status);
  else
   cm_free_msg(msg);
  break;
 }
}
