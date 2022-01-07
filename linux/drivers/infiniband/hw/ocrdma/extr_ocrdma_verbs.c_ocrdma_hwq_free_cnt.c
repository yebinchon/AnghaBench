
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp_hwq_info {int max_wqe_idx; int head; int tail; int max_cnt; } ;



__attribute__((used)) static int ocrdma_hwq_free_cnt(struct ocrdma_qp_hwq_info *q)
{
 return ((q->max_wqe_idx - q->head) + q->tail) % q->max_cnt;
}
