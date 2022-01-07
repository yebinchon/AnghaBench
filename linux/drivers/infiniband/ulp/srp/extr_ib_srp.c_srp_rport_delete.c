
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int dummy; } ;
struct srp_rport {struct srp_target_port* lld_data; } ;


 int srp_queue_remove_work (struct srp_target_port*) ;

__attribute__((used)) static void srp_rport_delete(struct srp_rport *rport)
{
 struct srp_target_port *target = rport->lld_data;

 srp_queue_remove_work(target);
}
