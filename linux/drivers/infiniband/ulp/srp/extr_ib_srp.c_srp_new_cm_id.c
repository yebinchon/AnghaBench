
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {scalar_t__ using_rdma_cm; } ;
struct srp_rdma_ch {struct srp_target_port* target; } ;


 int srp_new_ib_cm_id (struct srp_rdma_ch*) ;
 int srp_new_rdma_cm_id (struct srp_rdma_ch*) ;

__attribute__((used)) static int srp_new_cm_id(struct srp_rdma_ch *ch)
{
 struct srp_target_port *target = ch->target;

 return target->using_rdma_cm ? srp_new_rdma_cm_id(ch) :
  srp_new_ib_cm_id(ch);
}
