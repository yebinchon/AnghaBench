
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rvt_ibport {TYPE_1__* sm_ah; struct ib_mad_agent* send_agent; } ;
struct TYPE_5__ {int (* notify_free_mad_agent ) (struct rvt_dev_info*,int) ;} ;
struct TYPE_6__ {int nports; } ;
struct rvt_dev_info {TYPE_2__ driver_f; struct rvt_ibport** ports; TYPE_3__ dparms; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_4__ {int ibah; } ;


 int RDMA_DESTROY_AH_SLEEPABLE ;
 int ib_unregister_mad_agent (struct ib_mad_agent*) ;
 int rdma_destroy_ah (int *,int ) ;
 int stub1 (struct rvt_dev_info*,int) ;

void rvt_free_mad_agents(struct rvt_dev_info *rdi)
{
 struct ib_mad_agent *agent;
 struct rvt_ibport *rvp;
 int p;

 for (p = 0; p < rdi->dparms.nports; p++) {
  rvp = rdi->ports[p];
  if (rvp->send_agent) {
   agent = rvp->send_agent;
   rvp->send_agent = ((void*)0);
   ib_unregister_mad_agent(agent);
  }
  if (rvp->sm_ah) {
   rdma_destroy_ah(&rvp->sm_ah->ibah,
     RDMA_DESTROY_AH_SLEEPABLE);
   rvp->sm_ah = ((void*)0);
  }

  if (rdi->driver_f.notify_free_mad_agent)
   rdi->driver_f.notify_free_mad_agent(rdi, p);
 }
}
