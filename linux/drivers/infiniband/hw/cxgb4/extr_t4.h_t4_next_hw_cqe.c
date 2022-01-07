
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct t4_cqe {scalar_t__ bits_type_ts; } ;
struct t4_cq {int cidx; size_t size; scalar_t__ bits_type_ts; int error; struct t4_cqe* queue; int cqid; } ;


 int ENODATA ;
 int EOVERFLOW ;
 int pr_err (char*,int ) ;
 int rmb () ;
 scalar_t__ t4_valid_cqe (struct t4_cq*,struct t4_cqe*) ;

__attribute__((used)) static inline int t4_next_hw_cqe(struct t4_cq *cq, struct t4_cqe **cqe)
{
 int ret;
 u16 prev_cidx;

 if (cq->cidx == 0)
  prev_cidx = cq->size - 1;
 else
  prev_cidx = cq->cidx - 1;

 if (cq->queue[prev_cidx].bits_type_ts != cq->bits_type_ts) {
  ret = -EOVERFLOW;
  cq->error = 1;
  pr_err("cq overflow cqid %u\n", cq->cqid);
 } else if (t4_valid_cqe(cq, &cq->queue[cq->cidx])) {


  rmb();
  *cqe = &cq->queue[cq->cidx];
  ret = 0;
 } else
  ret = -ENODATA;
 return ret;
}
