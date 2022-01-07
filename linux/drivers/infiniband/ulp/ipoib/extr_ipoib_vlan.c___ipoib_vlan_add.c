
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {scalar_t__ reg_state; int (* priv_destructor ) (struct net_device*) ;int dev; } ;
struct ipoib_dev_priv {int pkey; int child_type; struct net_device* dev; struct net_device* parent; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTUNIQ ;
 int IPOIB_LEGACY_CHILD ;
 scalar_t__ NETREG_REGISTERED ;
 int WARN_ON (int) ;
 int dev_attr_parent ;
 scalar_t__ device_create_file (int *,int *) ;
 scalar_t__ ipoib_add_pkey_attr (struct net_device*) ;
 scalar_t__ ipoib_add_umcast_attr (struct net_device*) ;
 scalar_t__ ipoib_cm_add_mode_attr (struct net_device*) ;
 int ipoib_intf_free (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 int is_child_unique (struct ipoib_dev_priv*,struct ipoib_dev_priv*) ;
 int register_netdevice (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

int __ipoib_vlan_add(struct ipoib_dev_priv *ppriv, struct ipoib_dev_priv *priv,
       u16 pkey, int type)
{
 struct net_device *ndev = priv->dev;
 int result;

 ASSERT_RTNL();





 ndev->priv_destructor = ipoib_intf_free;





 WARN_ON(ppriv->dev->reg_state != NETREG_REGISTERED);

 if (pkey == 0 || pkey == 0x8000) {
  result = -EINVAL;
  goto out_early;
 }

 priv->parent = ppriv->dev;
 priv->pkey = pkey;
 priv->child_type = type;

 if (!is_child_unique(ppriv, priv)) {
  result = -ENOTUNIQ;
  goto out_early;
 }

 result = register_netdevice(ndev);
 if (result) {
  ipoib_warn(priv, "failed to initialize; error %i", result);





  goto out_early;
 }


 if (type == IPOIB_LEGACY_CHILD) {
  if (ipoib_cm_add_mode_attr(ndev))
   goto sysfs_failed;
  if (ipoib_add_pkey_attr(ndev))
   goto sysfs_failed;
  if (ipoib_add_umcast_attr(ndev))
   goto sysfs_failed;

  if (device_create_file(&ndev->dev, &dev_attr_parent))
   goto sysfs_failed;
 }

 return 0;

sysfs_failed:
 unregister_netdevice(priv->dev);
 return -ENOMEM;

out_early:
 if (ndev->priv_destructor)
  ndev->priv_destructor(ndev);
 return result;
}
