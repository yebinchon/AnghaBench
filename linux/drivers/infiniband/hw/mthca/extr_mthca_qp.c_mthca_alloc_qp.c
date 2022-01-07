
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mthca_qp {int qpn; scalar_t__ port; int transport; } ;
struct mthca_pd {int dummy; } ;
struct TYPE_4__ {int lock; int qp; int alloc; } ;
struct TYPE_3__ {int num_qps; } ;
struct mthca_dev {TYPE_2__ qp_table; TYPE_1__ limits; } ;
struct mthca_cq {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_cap {int dummy; } ;
typedef enum ib_sig_type { ____Placeholder_ib_sig_type } ib_sig_type ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int EINVAL ;
 int ENOMEM ;



 int RC ;
 int UC ;
 int UD ;
 int mthca_alloc (int *) ;
 int mthca_alloc_qp_common (struct mthca_dev*,struct mthca_pd*,struct mthca_cq*,struct mthca_cq*,int,struct mthca_qp*,struct ib_udata*) ;
 int mthca_array_set (int *,int,struct mthca_qp*) ;
 int mthca_free (int *,int) ;
 int mthca_set_qp_size (struct mthca_dev*,struct ib_qp_cap*,struct mthca_pd*,struct mthca_qp*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int mthca_alloc_qp(struct mthca_dev *dev,
     struct mthca_pd *pd,
     struct mthca_cq *send_cq,
     struct mthca_cq *recv_cq,
     enum ib_qp_type type,
     enum ib_sig_type send_policy,
     struct ib_qp_cap *cap,
     struct mthca_qp *qp,
     struct ib_udata *udata)
{
 int err;

 switch (type) {
 case 130: qp->transport = RC; break;
 case 129: qp->transport = UC; break;
 case 128: qp->transport = UD; break;
 default: return -EINVAL;
 }

 err = mthca_set_qp_size(dev, cap, pd, qp);
 if (err)
  return err;

 qp->qpn = mthca_alloc(&dev->qp_table.alloc);
 if (qp->qpn == -1)
  return -ENOMEM;


 qp->port = 0;

 err = mthca_alloc_qp_common(dev, pd, send_cq, recv_cq,
        send_policy, qp, udata);
 if (err) {
  mthca_free(&dev->qp_table.alloc, qp->qpn);
  return err;
 }

 spin_lock_irq(&dev->qp_table.lock);
 mthca_array_set(&dev->qp_table.qp,
   qp->qpn & (dev->limits.num_qps - 1), qp);
 spin_unlock_irq(&dev->qp_table.lock);

 return 0;
}
