
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {scalar_t__ using_rdma_cm; } ;
struct srp_rdma_ch {struct srp_target_port* target; } ;


 int srp_ib_lookup_path (struct srp_rdma_ch*) ;
 int srp_rdma_lookup_path (struct srp_rdma_ch*) ;

__attribute__((used)) static int srp_lookup_path(struct srp_rdma_ch *ch)
{
 struct srp_target_port *target = ch->target;

 return target->using_rdma_cm ? srp_rdma_lookup_path(ch) :
  srp_ib_lookup_path(ch);
}
