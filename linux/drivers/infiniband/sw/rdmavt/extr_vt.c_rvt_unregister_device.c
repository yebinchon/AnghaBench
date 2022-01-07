
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_dev_info {int ibdev; } ;


 int ib_unregister_device (int *) ;
 int rvt_free_mad_agents (struct rvt_dev_info*) ;
 int rvt_mr_exit (struct rvt_dev_info*) ;
 int rvt_qp_exit (struct rvt_dev_info*) ;
 int rvt_wss_exit (struct rvt_dev_info*) ;
 int trace_rvt_dbg (struct rvt_dev_info*,char*) ;

void rvt_unregister_device(struct rvt_dev_info *rdi)
{
 trace_rvt_dbg(rdi, "Driver is unregistering.");
 if (!rdi)
  return;

 rvt_free_mad_agents(rdi);

 ib_unregister_device(&rdi->ibdev);
 rvt_wss_exit(rdi);
 rvt_mr_exit(rdi);
 rvt_qp_exit(rdi);
}
