
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {int local_gid; TYPE_1__* dev; int flags; int max_ib_mtu; struct net_device* parent; } ;
struct TYPE_2__ {int * dev_addr; } ;


 int INFINIBAND_ALEN ;
 int IPOIB_FLAG_SUBINTERFACE ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int memcpy (int *,int *,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ipoib_child_init(struct net_device *ndev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(ndev);
 struct ipoib_dev_priv *ppriv = ipoib_priv(priv->parent);

 priv->max_ib_mtu = ppriv->max_ib_mtu;
 set_bit(IPOIB_FLAG_SUBINTERFACE, &priv->flags);
 memcpy(priv->dev->dev_addr, ppriv->dev->dev_addr, INFINIBAND_ALEN);
 memcpy(&priv->local_gid, &ppriv->local_gid, sizeof(priv->local_gid));
}
