
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qedr_srq_hwq_info {scalar_t__ max_wr; scalar_t__ wr_cons_cnt; scalar_t__ wr_prod_cnt; } ;



__attribute__((used)) static u32 qedr_srq_elem_left(struct qedr_srq_hwq_info *hw_srq)
{
 u32 used;





 used = hw_srq->wr_prod_cnt - hw_srq->wr_cons_cnt;

 return hw_srq->max_wr - used;
}
