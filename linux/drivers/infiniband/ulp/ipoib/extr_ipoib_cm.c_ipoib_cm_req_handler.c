
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {scalar_t__ state; int qp; int list; void* jiffies; struct ib_cm_id* id; struct net_device* dev; } ;
struct TYPE_3__ {int passive_ids; int stale_task; } ;
struct ipoib_dev_priv {int lock; TYPE_1__ cm; int wq; } ;
struct ipoib_cm_rx {scalar_t__ state; int qp; int list; void* jiffies; struct ib_cm_id* id; struct ipoib_cm_rx* dev; } ;
struct ib_cm_id {struct net_device* context; } ;
struct TYPE_4__ {int req_rcvd; } ;
struct ib_cm_event {TYPE_2__ param; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_QP_STATE ;
 int INIT_LIST_HEAD (int *) ;
 int IPOIB_CM_RX_DELAY ;
 scalar_t__ IPOIB_CM_RX_LIVE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ib_destroy_qp (int ) ;
 scalar_t__ ib_modify_qp (int ,int *,int ) ;
 int ipoib_cm_create_rx_qp (struct net_device*,struct net_device*) ;
 int ipoib_cm_err_attr ;
 int ipoib_cm_has_srq (struct net_device*) ;
 int ipoib_cm_modify_rx_qp (struct net_device*,struct ib_cm_id*,int ,unsigned int) ;
 int ipoib_cm_nonsrq_init_rx (struct net_device*,struct ib_cm_id*,struct net_device*) ;
 int ipoib_cm_send_rep (struct net_device*,struct ib_cm_id*,int ,int *,unsigned int) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,...) ;
 void* jiffies ;
 int kfree (struct net_device*) ;
 struct net_device* kzalloc (int,int ) ;
 int list_move (int *,int *) ;
 int prandom_u32 () ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int ipoib_cm_req_handler(struct ib_cm_id *cm_id,
    const struct ib_cm_event *event)
{
 struct net_device *dev = cm_id->context;
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ipoib_cm_rx *p;
 unsigned int psn;
 int ret;

 ipoib_dbg(priv, "REQ arrived\n");
 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return -ENOMEM;
 p->dev = dev;
 p->id = cm_id;
 cm_id->context = p;
 p->state = IPOIB_CM_RX_LIVE;
 p->jiffies = jiffies;
 INIT_LIST_HEAD(&p->list);

 p->qp = ipoib_cm_create_rx_qp(dev, p);
 if (IS_ERR(p->qp)) {
  ret = PTR_ERR(p->qp);
  goto err_qp;
 }

 psn = prandom_u32() & 0xffffff;
 ret = ipoib_cm_modify_rx_qp(dev, cm_id, p->qp, psn);
 if (ret)
  goto err_modify;

 if (!ipoib_cm_has_srq(dev)) {
  ret = ipoib_cm_nonsrq_init_rx(dev, cm_id, p);
  if (ret)
   goto err_modify;
 }

 spin_lock_irq(&priv->lock);
 queue_delayed_work(priv->wq,
      &priv->cm.stale_task, IPOIB_CM_RX_DELAY);


 p->jiffies = jiffies;
 if (p->state == IPOIB_CM_RX_LIVE)
  list_move(&p->list, &priv->cm.passive_ids);
 spin_unlock_irq(&priv->lock);

 ret = ipoib_cm_send_rep(dev, cm_id, p->qp, &event->param.req_rcvd, psn);
 if (ret) {
  ipoib_warn(priv, "failed to send REP: %d\n", ret);
  if (ib_modify_qp(p->qp, &ipoib_cm_err_attr, IB_QP_STATE))
   ipoib_warn(priv, "unable to move qp to error state\n");
 }
 return 0;

err_modify:
 ib_destroy_qp(p->qp);
err_qp:
 kfree(p);
 return ret;
}
