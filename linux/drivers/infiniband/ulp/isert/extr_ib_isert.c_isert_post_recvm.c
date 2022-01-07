
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isert_conn {struct ib_recv_wr* rx_wr; int qp; struct iser_rx_desc* rx_descs; } ;
struct iser_rx_desc {int in_use; int rx_sg; int rx_cqe; } ;
struct ib_recv_wr {int num_sge; struct ib_recv_wr* next; int * sg_list; int * wr_cqe; } ;


 int ib_post_recv (int ,struct ib_recv_wr*,int *) ;
 int isert_err (char*,int) ;

__attribute__((used)) static int
isert_post_recvm(struct isert_conn *isert_conn, u32 count)
{
 struct ib_recv_wr *rx_wr;
 int i, ret;
 struct iser_rx_desc *rx_desc;

 for (rx_wr = isert_conn->rx_wr, i = 0; i < count; i++, rx_wr++) {
  rx_desc = &isert_conn->rx_descs[i];

  rx_wr->wr_cqe = &rx_desc->rx_cqe;
  rx_wr->sg_list = &rx_desc->rx_sg;
  rx_wr->num_sge = 1;
  rx_wr->next = rx_wr + 1;
  rx_desc->in_use = 0;
 }
 rx_wr--;
 rx_wr->next = ((void*)0);

 ret = ib_post_recv(isert_conn->qp, isert_conn->rx_wr, ((void*)0));
 if (ret)
  isert_err("ib_post_recv() failed with ret: %d\n", ret);

 return ret;
}
