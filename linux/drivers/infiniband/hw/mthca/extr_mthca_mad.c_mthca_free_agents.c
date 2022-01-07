
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; } ;
struct mthca_dev {scalar_t__* sm_ah; struct ib_mad_agent*** send_agent; TYPE_1__ limits; } ;
struct ib_mad_agent {int dummy; } ;


 int RDMA_DESTROY_AH_SLEEPABLE ;
 int ib_unregister_mad_agent (struct ib_mad_agent*) ;
 int rdma_destroy_ah (scalar_t__,int ) ;

void mthca_free_agents(struct mthca_dev *dev)
{
 struct ib_mad_agent *agent;
 int p, q;

 for (p = 0; p < dev->limits.num_ports; ++p) {
  for (q = 0; q <= 1; ++q) {
   agent = dev->send_agent[p][q];
   dev->send_agent[p][q] = ((void*)0);
   ib_unregister_mad_agent(agent);
  }

  if (dev->sm_ah[p])
   rdma_destroy_ah(dev->sm_ah[p],
     RDMA_DESTROY_AH_SLEEPABLE);
 }
}
