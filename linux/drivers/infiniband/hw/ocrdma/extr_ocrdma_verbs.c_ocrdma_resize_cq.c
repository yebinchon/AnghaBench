
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_cq {int max_hw_cqe; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int cqe; } ;


 int EINVAL ;
 struct ocrdma_cq* get_ocrdma_cq (struct ib_cq*) ;

int ocrdma_resize_cq(struct ib_cq *ibcq, int new_cnt,
       struct ib_udata *udata)
{
 int status = 0;
 struct ocrdma_cq *cq = get_ocrdma_cq(ibcq);

 if (new_cnt < 1 || new_cnt > cq->max_hw_cqe) {
  status = -EINVAL;
  return status;
 }
 ibcq->cqe = new_cnt;
 return status;
}
