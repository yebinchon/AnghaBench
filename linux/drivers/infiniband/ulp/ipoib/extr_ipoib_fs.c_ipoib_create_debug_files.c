
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char* name; } ;
struct ipoib_dev_priv {void* path_dentry; void* mcg_dentry; } ;
typedef int name ;


 int IFNAMSIZ ;
 int S_IFREG ;
 int S_IRUGO ;
 void* debugfs_create_file (char*,int,int ,struct net_device*,int *) ;
 int ipoib_mcg_fops ;
 int ipoib_path_fops ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_root ;
 int snprintf (char*,int,char*,char*) ;

void ipoib_create_debug_files(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 char name[IFNAMSIZ + sizeof("_path")];

 snprintf(name, sizeof(name), "%s_mcg", dev->name);
 priv->mcg_dentry = debugfs_create_file(name, S_IFREG | S_IRUGO,
            ipoib_root, dev, &ipoib_mcg_fops);

 snprintf(name, sizeof(name), "%s_path", dev->name);
 priv->path_dentry = debugfs_create_file(name, S_IFREG | S_IRUGO,
      ipoib_root, dev, &ipoib_path_fops);
}
