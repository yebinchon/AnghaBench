
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct list_head {int dummy; } ;
struct ib_qp {int mr_lock; int pd; } ;
struct ib_mr {int qp_entry; } ;
typedef enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;


 int IB_MR_TYPE_INTEGRITY ;
 scalar_t__ IS_ERR (struct ib_mr*) ;
 int PTR_ERR (struct ib_mr*) ;
 struct ib_mr* ib_alloc_mr (int ,int,int ) ;
 struct ib_mr* ib_alloc_mr_integrity (int ,int ,int ) ;
 int ib_mr_pool_destroy (struct ib_qp*,struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ib_mr_pool_init(struct ib_qp *qp, struct list_head *list, int nr,
  enum ib_mr_type type, u32 max_num_sg, u32 max_num_meta_sg)
{
 struct ib_mr *mr;
 unsigned long flags;
 int ret, i;

 for (i = 0; i < nr; i++) {
  if (type == IB_MR_TYPE_INTEGRITY)
   mr = ib_alloc_mr_integrity(qp->pd, max_num_sg,
         max_num_meta_sg);
  else
   mr = ib_alloc_mr(qp->pd, type, max_num_sg);
  if (IS_ERR(mr)) {
   ret = PTR_ERR(mr);
   goto out;
  }

  spin_lock_irqsave(&qp->mr_lock, flags);
  list_add_tail(&mr->qp_entry, list);
  spin_unlock_irqrestore(&qp->mr_lock, flags);
 }

 return 0;
out:
 ib_mr_pool_destroy(qp, list);
 return ret;
}
