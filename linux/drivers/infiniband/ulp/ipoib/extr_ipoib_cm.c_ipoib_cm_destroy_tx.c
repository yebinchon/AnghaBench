
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reap_task; int reap_list; } ;
struct ipoib_dev_priv {int lock; TYPE_1__ cm; int wq; } ;
struct ipoib_cm_tx {TYPE_2__* neigh; int list; int flags; int dev; } ;
struct TYPE_4__ {scalar_t__ daddr; } ;


 int IPOIB_FLAG_INITIALIZED ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,scalar_t__) ;
 struct ipoib_dev_priv* ipoib_priv (int ) ;
 int list_move (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void ipoib_cm_destroy_tx(struct ipoib_cm_tx *tx)
{
 struct ipoib_dev_priv *priv = ipoib_priv(tx->dev);
 unsigned long flags;
 if (test_and_clear_bit(IPOIB_FLAG_INITIALIZED, &tx->flags)) {
  spin_lock_irqsave(&priv->lock, flags);
  list_move(&tx->list, &priv->cm.reap_list);
  queue_work(priv->wq, &priv->cm.reap_task);
  ipoib_dbg(priv, "Reap connection for gid %pI6\n",
     tx->neigh->daddr + 4);
  tx->neigh = ((void*)0);
  spin_unlock_irqrestore(&priv->lock, flags);
 }
}
