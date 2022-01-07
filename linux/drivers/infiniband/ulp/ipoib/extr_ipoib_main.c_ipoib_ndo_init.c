
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int neigh_priv_len; int* broadcast; int max_mtu; int mtu; } ;
struct ipoib_neigh {int dummy; } ;
struct ipoib_dev_priv {int pkey; int vlan_rwsem; int child_intfs; int list; struct net_device* parent; int port; TYPE_2__* dev; TYPE_1__* ca; int flags; int admin_mtu; int mcast_mtu; int max_ib_mtu; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 int IPOIB_CM_MTU ;
 int IPOIB_FLAG_DEV_ADDR_SET ;
 int IPOIB_UD_MTU (int ) ;
 int dev_hold (struct net_device*) ;
 int down_write (int *) ;
 int ipoib_child_init (struct net_device*) ;
 int ipoib_dev_init (struct net_device*) ;
 int ipoib_parent_init (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_set_dev_features (struct ipoib_dev_priv*) ;
 int list_add_tail (int *,int *) ;
 int pr_warn (char*,int ,int ,int ,int) ;
 int set_bit (int ,int *) ;
 int up_write (int *) ;

__attribute__((used)) static int ipoib_ndo_init(struct net_device *ndev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(ndev);
 int rc;

 if (priv->parent) {
  ipoib_child_init(ndev);
 } else {
  rc = ipoib_parent_init(ndev);
  if (rc)
   return rc;
 }


 ndev->mtu = IPOIB_UD_MTU(priv->max_ib_mtu);
 priv->mcast_mtu = priv->admin_mtu = ndev->mtu;
 ndev->max_mtu = IPOIB_CM_MTU;

 ndev->neigh_priv_len = sizeof(struct ipoib_neigh);





 priv->pkey |= 0x8000;

 ndev->broadcast[8] = priv->pkey >> 8;
 ndev->broadcast[9] = priv->pkey & 0xff;
 set_bit(IPOIB_FLAG_DEV_ADDR_SET, &priv->flags);

 ipoib_set_dev_features(priv);

 rc = ipoib_dev_init(ndev);
 if (rc) {
  pr_warn("%s: failed to initialize device: %s port %d (ret = %d)\n",
   priv->ca->name, priv->dev->name, priv->port, rc);
  return rc;
 }

 if (priv->parent) {
  struct ipoib_dev_priv *ppriv = ipoib_priv(priv->parent);

  dev_hold(priv->parent);

  down_write(&ppriv->vlan_rwsem);
  list_add_tail(&priv->list, &ppriv->child_intfs);
  up_write(&ppriv->vlan_rwsem);
 }

 return 0;
}
