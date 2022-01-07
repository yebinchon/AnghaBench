
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {struct net_device* parent; int * wq; int vlan_rwsem; int list; int child_intfs; } ;


 int ASSERT_RTNL () ;
 int WARN_ON (int) ;
 int destroy_workqueue (int *) ;
 int dev_put (struct net_device*) ;
 int down_write (int *) ;
 int flush_workqueue (int *) ;
 int ipoib_ib_dev_cleanup (struct net_device*) ;
 int ipoib_neigh_hash_uninit (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void ipoib_ndo_uninit(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 ASSERT_RTNL();





 WARN_ON(!list_empty(&priv->child_intfs));

 if (priv->parent) {
  struct ipoib_dev_priv *ppriv = ipoib_priv(priv->parent);

  down_write(&ppriv->vlan_rwsem);
  list_del(&priv->list);
  up_write(&ppriv->vlan_rwsem);
 }

 ipoib_neigh_hash_uninit(dev);

 ipoib_ib_dev_cleanup(dev);


 if (priv->wq) {
  flush_workqueue(priv->wq);
  destroy_workqueue(priv->wq);
  priv->wq = ((void*)0);
 }

 if (priv->parent)
  dev_put(priv->parent);
}
