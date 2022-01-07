
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mad_rmpp_recv {scalar_t__ state; int repwin; } ;
struct ib_mad_recv_wc {int dummy; } ;
struct ib_mad_agent_private {int dummy; } ;


 scalar_t__ RMPP_STATE_COMPLETE ;
 struct mad_rmpp_recv* find_rmpp_recv (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;

__attribute__((used)) static void process_ds_ack(struct ib_mad_agent_private *agent,
      struct ib_mad_recv_wc *mad_recv_wc, int newwin)
{
 struct mad_rmpp_recv *rmpp_recv;

 rmpp_recv = find_rmpp_recv(agent, mad_recv_wc);
 if (rmpp_recv && rmpp_recv->state == RMPP_STATE_COMPLETE)
  rmpp_recv->repwin = newwin;
}
