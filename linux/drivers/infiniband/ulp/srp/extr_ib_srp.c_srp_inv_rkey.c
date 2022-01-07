
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int done; } ;
struct srp_request {TYPE_2__ reg_cqe; } ;
struct srp_rdma_ch {int qp; } ;
struct TYPE_3__ {int invalidate_rkey; } ;
struct ib_send_wr {TYPE_2__* wr_cqe; TYPE_1__ ex; int send_flags; int num_sge; int * next; int opcode; } ;


 int IB_WR_LOCAL_INV ;
 int ib_post_send (int ,struct ib_send_wr*,int *) ;
 int srp_inv_rkey_err_done ;

__attribute__((used)) static int srp_inv_rkey(struct srp_request *req, struct srp_rdma_ch *ch,
  u32 rkey)
{
 struct ib_send_wr wr = {
  .opcode = IB_WR_LOCAL_INV,
  .next = ((void*)0),
  .num_sge = 0,
  .send_flags = 0,
  .ex.invalidate_rkey = rkey,
 };

 wr.wr_cqe = &req->reg_cqe;
 req->reg_cqe.done = srp_inv_rkey_err_done;
 return ib_post_send(ch->qp, &wr, ((void*)0));
}
