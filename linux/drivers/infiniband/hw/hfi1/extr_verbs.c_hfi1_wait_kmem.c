
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp {struct ib_device* device; } ;
struct rvt_qp {int s_flags; struct ib_qp ibqp; struct hfi1_qp_priv* priv; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int * lock; int list; } ;
struct hfi1_qp_priv {TYPE_1__ s_iowait; } ;
struct hfi1_ibdev {int iowait_lock; int memwait; int mem_timer; } ;


 int RVT_S_WAIT_KMEM ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int rvt_get_qp (struct rvt_qp*) ;
 struct hfi1_ibdev* to_idev (struct ib_device*) ;
 int trace_hfi1_qpsleep (struct rvt_qp*,int ) ;

void hfi1_wait_kmem(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;
 struct ib_qp *ibqp = &qp->ibqp;
 struct ib_device *ibdev = ibqp->device;
 struct hfi1_ibdev *dev = to_idev(ibdev);

 if (list_empty(&priv->s_iowait.list)) {
  if (list_empty(&dev->memwait))
   mod_timer(&dev->mem_timer, jiffies + 1);
  qp->s_flags |= RVT_S_WAIT_KMEM;
  list_add_tail(&priv->s_iowait.list, &dev->memwait);
  priv->s_iowait.lock = &dev->iowait_lock;
  trace_hfi1_qpsleep(qp, RVT_S_WAIT_KMEM);
  rvt_get_qp(qp);
 }
}
