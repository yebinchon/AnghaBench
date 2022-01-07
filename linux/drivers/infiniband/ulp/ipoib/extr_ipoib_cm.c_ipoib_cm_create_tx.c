
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_path {int dummy; } ;
struct ipoib_neigh {struct ipoib_cm_tx* cm; } ;
struct TYPE_2__ {int start_task; int start_list; } ;
struct ipoib_dev_priv {TYPE_1__ cm; int wq; } ;
struct ipoib_cm_tx {int flags; int list; struct net_device* dev; struct ipoib_neigh* neigh; } ;


 int GFP_ATOMIC ;
 int IPOIB_FLAG_INITIALIZED ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 struct ipoib_cm_tx* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;

struct ipoib_cm_tx *ipoib_cm_create_tx(struct net_device *dev, struct ipoib_path *path,
           struct ipoib_neigh *neigh)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ipoib_cm_tx *tx;

 tx = kzalloc(sizeof(*tx), GFP_ATOMIC);
 if (!tx)
  return ((void*)0);

 neigh->cm = tx;
 tx->neigh = neigh;
 tx->dev = dev;
 list_add(&tx->list, &priv->cm.start_list);
 set_bit(IPOIB_FLAG_INITIALIZED, &tx->flags);
 queue_work(priv->wq, &priv->cm.start_task);
 return tx;
}
