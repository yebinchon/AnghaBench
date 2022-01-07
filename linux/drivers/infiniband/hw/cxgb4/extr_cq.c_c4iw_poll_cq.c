
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;
struct c4iw_cq {int lock; } ;


 int EAGAIN ;
 int ENODATA ;
 int c4iw_poll_cq_one (struct c4iw_cq*,struct ib_wc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct c4iw_cq* to_c4iw_cq (struct ib_cq*) ;

int c4iw_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
 struct c4iw_cq *chp;
 unsigned long flags;
 int npolled;
 int err = 0;

 chp = to_c4iw_cq(ibcq);

 spin_lock_irqsave(&chp->lock, flags);
 for (npolled = 0; npolled < num_entries; ++npolled) {
  do {
   err = c4iw_poll_cq_one(chp, wc + npolled);
  } while (err == -EAGAIN);
  if (err)
   break;
 }
 spin_unlock_irqrestore(&chp->lock, flags);
 return !err || err == -ENODATA ? npolled : err;
}
