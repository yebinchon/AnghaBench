
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_cnt; } ;
struct ocrdma_srq {int bit_fields_len; TYPE_1__ rq; scalar_t__* idx_bit_fields; } ;


 int BUG_ON (int) ;
 int ffs (scalar_t__) ;
 int ocrdma_srq_toggle_bit (struct ocrdma_srq*,int) ;

__attribute__((used)) static int ocrdma_srq_get_idx(struct ocrdma_srq *srq)
{
 int row = 0;
 int indx = 0;

 for (row = 0; row < srq->bit_fields_len; row++) {
  if (srq->idx_bit_fields[row]) {
   indx = ffs(srq->idx_bit_fields[row]);
   indx = (row * 32) + (indx - 1);
   BUG_ON(indx >= srq->rq.max_cnt);
   ocrdma_srq_toggle_bit(srq, indx);
   break;
  }
 }

 BUG_ON(row == srq->bit_fields_len);
 return indx + 1;
}
