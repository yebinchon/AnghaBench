
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwch_dev {int dummy; } ;
struct iwch_cq {int lock; struct iwch_dev* rhp; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;


 int EAGAIN ;
 int iwch_poll_cq_one (struct iwch_dev*,struct iwch_cq*,struct ib_wc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct iwch_cq* to_iwch_cq (struct ib_cq*) ;

int iwch_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
 struct iwch_dev *rhp;
 struct iwch_cq *chp;
 unsigned long flags;
 int npolled;
 int err = 0;

 chp = to_iwch_cq(ibcq);
 rhp = chp->rhp;

 spin_lock_irqsave(&chp->lock, flags);
 for (npolled = 0; npolled < num_entries; ++npolled) {






  do {
   err = iwch_poll_cq_one(rhp, chp, wc + npolled);
  } while (err == -EAGAIN);
  if (err <= 0)
   break;
 }
 spin_unlock_irqrestore(&chp->lock, flags);

 if (err < 0)
  return err;
 else {
  return npolled;
 }
}
