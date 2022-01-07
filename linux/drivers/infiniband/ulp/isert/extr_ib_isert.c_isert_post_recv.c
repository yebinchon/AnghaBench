
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int qp; } ;
struct iser_rx_desc {int in_use; int rx_sg; int rx_cqe; } ;
struct ib_recv_wr {int num_sge; int * next; int * sg_list; int * wr_cqe; } ;


 int ib_post_recv (int ,struct ib_recv_wr*,int *) ;
 int isert_err (char*,int) ;

__attribute__((used)) static int
isert_post_recv(struct isert_conn *isert_conn, struct iser_rx_desc *rx_desc)
{
 struct ib_recv_wr rx_wr;
 int ret;

 if (!rx_desc->in_use) {




  return 0;
 }

 rx_desc->in_use = 0;
 rx_wr.wr_cqe = &rx_desc->rx_cqe;
 rx_wr.sg_list = &rx_desc->rx_sg;
 rx_wr.num_sge = 1;
 rx_wr.next = ((void*)0);

 ret = ib_post_recv(isert_conn->qp, &rx_wr, ((void*)0));
 if (ret)
  isert_err("ib_post_recv() failed with ret: %d\n", ret);

 return ret;
}
