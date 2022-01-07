
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mad_rmpp_recv {int list; int rmpp_wc; } ;
struct ib_mad_agent_private {int rmpp_list; } ;


 struct mad_rmpp_recv* find_rmpp_recv (struct ib_mad_agent_private*,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct mad_rmpp_recv *
insert_rmpp_recv(struct ib_mad_agent_private *agent,
   struct mad_rmpp_recv *rmpp_recv)
{
 struct mad_rmpp_recv *cur_rmpp_recv;

 cur_rmpp_recv = find_rmpp_recv(agent, rmpp_recv->rmpp_wc);
 if (!cur_rmpp_recv)
  list_add_tail(&rmpp_recv->list, &agent->rmpp_list);

 return cur_rmpp_recv;
}
