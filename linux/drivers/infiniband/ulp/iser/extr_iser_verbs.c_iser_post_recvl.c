
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int lkey; int length; int addr; } ;
struct TYPE_7__ {int done; } ;
struct iser_login_desc {TYPE_4__ sge; TYPE_3__ cqe; int rsp_dma; } ;
struct ib_conn {int post_recv_buf_count; int qp; TYPE_2__* device; } ;
struct iser_conn {struct iser_login_desc login_desc; struct ib_conn ib_conn; } ;
struct ib_recv_wr {int num_sge; int * next; TYPE_4__* sg_list; TYPE_3__* wr_cqe; } ;
struct TYPE_6__ {TYPE_1__* pd; } ;
struct TYPE_5__ {int local_dma_lkey; } ;


 int ISER_RX_LOGIN_SIZE ;
 int ib_post_recv (int ,struct ib_recv_wr*,int *) ;
 int iser_err (char*,int) ;
 int iser_login_rsp ;

int iser_post_recvl(struct iser_conn *iser_conn)
{
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 struct iser_login_desc *desc = &iser_conn->login_desc;
 struct ib_recv_wr wr;
 int ib_ret;

 desc->sge.addr = desc->rsp_dma;
 desc->sge.length = ISER_RX_LOGIN_SIZE;
 desc->sge.lkey = ib_conn->device->pd->local_dma_lkey;

 desc->cqe.done = iser_login_rsp;
 wr.wr_cqe = &desc->cqe;
 wr.sg_list = &desc->sge;
 wr.num_sge = 1;
 wr.next = ((void*)0);

 ib_conn->post_recv_buf_count++;
 ib_ret = ib_post_recv(ib_conn->qp, &wr, ((void*)0));
 if (ib_ret) {
  iser_err("ib_post_recv failed ret=%d\n", ib_ret);
  ib_conn->post_recv_buf_count--;
 }

 return ib_ret;
}
