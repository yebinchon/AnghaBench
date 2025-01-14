
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rdma_cm_id {TYPE_1__* qp; scalar_t__ context; } ;
struct iser_conn {scalar_t__ state; int snd_w_inv; int up_completion; } ;
struct ib_qp_init_attr {int dummy; } ;
struct ib_qp_attr {struct iser_conn* dest_qp_num; } ;
struct TYPE_2__ {char* qp_num; } ;


 scalar_t__ ISER_CONN_PENDING ;
 scalar_t__ ISER_CONN_UP ;
 int ISER_SEND_W_INV_NOT_SUP ;
 int complete (int *) ;
 int ib_query_qp (TYPE_1__*,struct ib_qp_attr*,int ,struct ib_qp_init_attr*) ;
 int iser_info (char*,struct iser_conn*,char*) ;

__attribute__((used)) static void iser_connected_handler(struct rdma_cm_id *cma_id,
       const void *private_data)
{
 struct iser_conn *iser_conn;
 struct ib_qp_attr attr;
 struct ib_qp_init_attr init_attr;

 iser_conn = (struct iser_conn *)cma_id->context;
 if (iser_conn->state != ISER_CONN_PENDING)

  return;

 (void)ib_query_qp(cma_id->qp, &attr, ~0, &init_attr);
 iser_info("remote qpn:%x my qpn:%x\n", attr.dest_qp_num, cma_id->qp->qp_num);

 if (private_data) {
  u8 flags = *(u8 *)private_data;

  iser_conn->snd_w_inv = !(flags & ISER_SEND_W_INV_NOT_SUP);
 }

 iser_info("conn %p: negotiated %s invalidation\n",
    iser_conn, iser_conn->snd_w_inv ? "remote" : "local");

 iser_conn->state = ISER_CONN_UP;
 complete(&iser_conn->up_completion);
}
