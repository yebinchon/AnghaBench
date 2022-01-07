
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp_hwq_info {int tail; int max_wqe_idx; } ;



__attribute__((used)) static void ocrdma_hwq_inc_tail(struct ocrdma_qp_hwq_info *q)
{
 q->tail = (q->tail + 1) & q->max_wqe_idx;
}
