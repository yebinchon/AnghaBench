
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int neigh_reap_task; int ah_reap_task; int restart_task; int flush_heavy; int flush_normal; int flush_light; int carrier_on_task; int mcast_task; int multicast_list; int dead_ahs; int child_intfs; int path_list; int mcast_mutex; int vlan_rwsem; int lock; struct net_device* dev; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int init_rwsem (int *) ;
 int ipoib_ib_dev_flush_heavy ;
 int ipoib_ib_dev_flush_light ;
 int ipoib_ib_dev_flush_normal ;
 int ipoib_mcast_carrier_on_task ;
 int ipoib_mcast_join_task ;
 int ipoib_mcast_restart_task ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_reap_ah ;
 int ipoib_reap_neigh ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ipoib_build_priv(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 priv->dev = dev;
 spin_lock_init(&priv->lock);
 init_rwsem(&priv->vlan_rwsem);
 mutex_init(&priv->mcast_mutex);

 INIT_LIST_HEAD(&priv->path_list);
 INIT_LIST_HEAD(&priv->child_intfs);
 INIT_LIST_HEAD(&priv->dead_ahs);
 INIT_LIST_HEAD(&priv->multicast_list);

 INIT_DELAYED_WORK(&priv->mcast_task, ipoib_mcast_join_task);
 INIT_WORK(&priv->carrier_on_task, ipoib_mcast_carrier_on_task);
 INIT_WORK(&priv->flush_light, ipoib_ib_dev_flush_light);
 INIT_WORK(&priv->flush_normal, ipoib_ib_dev_flush_normal);
 INIT_WORK(&priv->flush_heavy, ipoib_ib_dev_flush_heavy);
 INIT_WORK(&priv->restart_task, ipoib_mcast_restart_task);
 INIT_DELAYED_WORK(&priv->ah_reap_task, ipoib_reap_ah);
 INIT_DELAYED_WORK(&priv->neigh_reap_task, ipoib_reap_neigh);
}
