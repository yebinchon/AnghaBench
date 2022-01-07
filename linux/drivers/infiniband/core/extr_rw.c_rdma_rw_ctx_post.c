
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rdma_rw_ctx {int dummy; } ;
struct ib_send_wr {int dummy; } ;
struct ib_qp {int dummy; } ;
struct ib_cqe {int dummy; } ;


 int ib_post_send (struct ib_qp*,struct ib_send_wr*,int *) ;
 struct ib_send_wr* rdma_rw_ctx_wrs (struct rdma_rw_ctx*,struct ib_qp*,int ,struct ib_cqe*,struct ib_send_wr*) ;

int rdma_rw_ctx_post(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
  struct ib_cqe *cqe, struct ib_send_wr *chain_wr)
{
 struct ib_send_wr *first_wr;

 first_wr = rdma_rw_ctx_wrs(ctx, qp, port_num, cqe, chain_wr);
 return ib_post_send(qp, first_wr, ((void*)0));
}
