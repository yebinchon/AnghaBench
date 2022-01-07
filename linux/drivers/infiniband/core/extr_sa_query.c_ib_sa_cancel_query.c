
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_sa_query {struct ib_mad_send_buf* mad_buf; TYPE_1__* port; } ;
struct ib_mad_send_buf {int dummy; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {struct ib_mad_agent* agent; } ;


 int ib_cancel_mad (struct ib_mad_agent*,struct ib_mad_send_buf*) ;
 int ib_nl_cancel_request (struct ib_sa_query*) ;
 int queries ;
 struct ib_sa_query* xa_load (int *,int) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

void ib_sa_cancel_query(int id, struct ib_sa_query *query)
{
 unsigned long flags;
 struct ib_mad_agent *agent;
 struct ib_mad_send_buf *mad_buf;

 xa_lock_irqsave(&queries, flags);
 if (xa_load(&queries, id) != query) {
  xa_unlock_irqrestore(&queries, flags);
  return;
 }
 agent = query->port->agent;
 mad_buf = query->mad_buf;
 xa_unlock_irqrestore(&queries, flags);






 if (!ib_nl_cancel_request(query))
  ib_cancel_mad(agent, mad_buf);
}
