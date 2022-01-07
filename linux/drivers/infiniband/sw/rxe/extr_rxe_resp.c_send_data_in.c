
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* wqe; } ;
struct rxe_qp {TYPE_2__ resp; int pd; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;
struct TYPE_3__ {int dma; } ;


 int ENOSPC ;
 int IB_ACCESS_LOCAL_WRITE ;
 int RESPST_ERR_LENGTH ;
 int RESPST_ERR_MALFORMED_WQE ;
 int RESPST_NONE ;
 int copy_data (int ,int ,int *,void*,int,int ,int *) ;
 int to_mem_obj ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static enum resp_states send_data_in(struct rxe_qp *qp, void *data_addr,
         int data_len)
{
 int err;

 err = copy_data(qp->pd, IB_ACCESS_LOCAL_WRITE, &qp->resp.wqe->dma,
   data_addr, data_len, to_mem_obj, ((void*)0));
 if (unlikely(err))
  return (err == -ENOSPC) ? RESPST_ERR_LENGTH
     : RESPST_ERR_MALFORMED_WQE;

 return RESPST_NONE;
}
