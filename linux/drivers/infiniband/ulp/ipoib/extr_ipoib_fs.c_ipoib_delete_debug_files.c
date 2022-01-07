
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int * path_dentry; int * mcg_dentry; } ;


 int debugfs_remove (int *) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;

void ipoib_delete_debug_files(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 debugfs_remove(priv->mcg_dentry);
 debugfs_remove(priv->path_dentry);
 priv->mcg_dentry = priv->path_dentry = ((void*)0);
}
