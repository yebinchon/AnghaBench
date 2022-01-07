
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int ch_count; int req_ring_size; struct srp_rdma_ch* ch; } ;
struct srp_rport {struct srp_target_port* lld_data; } ;
struct srp_request {int dummy; } ;
struct srp_rdma_ch {struct srp_request* req_ring; } ;


 int DID_TRANSPORT_FAILFAST ;
 int srp_finish_req (struct srp_rdma_ch*,struct srp_request*,int *,int) ;

__attribute__((used)) static void srp_terminate_io(struct srp_rport *rport)
{
 struct srp_target_port *target = rport->lld_data;
 struct srp_rdma_ch *ch;
 int i, j;

 for (i = 0; i < target->ch_count; i++) {
  ch = &target->ch[i];

  for (j = 0; j < target->req_ring_size; ++j) {
   struct srp_request *req = &ch->req_ring[j];

   srp_finish_req(ch, req, ((void*)0),
           DID_TRANSPORT_FAILFAST << 16);
  }
 }
}
