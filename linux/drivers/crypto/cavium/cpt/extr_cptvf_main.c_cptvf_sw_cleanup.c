
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpt_vf {int dummy; } ;


 int cleanup_command_queues (struct cpt_vf*) ;
 int cleanup_pending_queues (struct cpt_vf*) ;
 int cleanup_worker_threads (struct cpt_vf*) ;

__attribute__((used)) static void cptvf_sw_cleanup(struct cpt_vf *cptvf)
{
 cleanup_worker_threads(cptvf);
 cleanup_pending_queues(cptvf);
 cleanup_command_queues(cptvf);
}
