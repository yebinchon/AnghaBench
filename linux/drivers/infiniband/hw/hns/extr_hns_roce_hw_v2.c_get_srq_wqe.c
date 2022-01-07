
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_srq {int wqe_shift; int buf; } ;


 void* hns_roce_buf_offset (int *,int) ;

__attribute__((used)) static void *get_srq_wqe(struct hns_roce_srq *srq, int n)
{
 return hns_roce_buf_offset(&srq->buf, n << srq->wqe_shift);
}
