
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ipoib_path {int query; } ;
struct ipoib_neigh {int dummy; } ;
struct ipoib_dev_priv {int lock; } ;


 struct ipoib_path* __path_find (struct net_device*,int *) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int path_rec_start (struct net_device*,struct ipoib_path*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void neigh_refresh_path(struct ipoib_neigh *neigh, u8 *daddr,
          struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ipoib_path *path;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 path = __path_find(dev, daddr + 4);
 if (!path)
  goto out;
 if (!path->query)
  path_rec_start(dev, path);
out:
 spin_unlock_irqrestore(&priv->lock, flags);
}
