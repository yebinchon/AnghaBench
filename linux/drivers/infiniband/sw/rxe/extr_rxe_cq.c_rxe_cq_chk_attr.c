
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_cqe; } ;
struct rxe_dev {TYPE_1__ attr; } ;
struct rxe_cq {int queue; } ;


 int EINVAL ;
 int pr_warn (char*,int,...) ;
 int queue_count (int ) ;

int rxe_cq_chk_attr(struct rxe_dev *rxe, struct rxe_cq *cq,
      int cqe, int comp_vector)
{
 int count;

 if (cqe <= 0) {
  pr_warn("cqe(%d) <= 0\n", cqe);
  goto err1;
 }

 if (cqe > rxe->attr.max_cqe) {
  pr_warn("cqe(%d) > max_cqe(%d)\n",
   cqe, rxe->attr.max_cqe);
  goto err1;
 }

 if (cq) {
  count = queue_count(cq->queue);
  if (cqe < count) {
   pr_warn("cqe(%d) < current # elements in queue (%d)",
    cqe, count);
   goto err1;
  }
 }

 return 0;

err1:
 return -EINVAL;
}
