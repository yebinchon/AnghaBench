
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rvt_qp {int dummy; } ;


 int tid_rdma_conn_reply (struct rvt_qp*,scalar_t__) ;
 int tid_rdma_conn_req (struct rvt_qp*,scalar_t__*) ;

bool tid_rdma_conn_resp(struct rvt_qp *qp, u64 *data)
{
 bool ret;

 ret = tid_rdma_conn_reply(qp, *data);
 *data = 0;





 if (ret)
  (void)tid_rdma_conn_req(qp, data);
 return ret;
}
