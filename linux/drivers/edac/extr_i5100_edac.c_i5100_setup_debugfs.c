
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {int dev; TYPE_1__* bus; struct i5100_priv* pvt_info; } ;
struct i5100_priv {int debugfs; int inject_eccmask2; int inject_eccmask1; int inject_deviceptr2; int inject_deviceptr1; int inject_hlinesel; int inject_channel; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int S_IRUGO ;
 int S_IWUSR ;
 int edac_debugfs_create_dir_at (int ,int ) ;
 int edac_debugfs_create_file (char*,int,int ,int *,int *) ;
 int edac_debugfs_create_x16 (char*,int,int ,int *) ;
 int edac_debugfs_create_x8 (char*,int,int ,int *) ;
 int i5100_debugfs ;
 int i5100_inject_enable_fops ;

__attribute__((used)) static int i5100_setup_debugfs(struct mem_ctl_info *mci)
{
 struct i5100_priv *priv = mci->pvt_info;

 if (!i5100_debugfs)
  return -ENODEV;

 priv->debugfs = edac_debugfs_create_dir_at(mci->bus->name, i5100_debugfs);

 if (!priv->debugfs)
  return -ENOMEM;

 edac_debugfs_create_x8("inject_channel", S_IRUGO | S_IWUSR, priv->debugfs,
    &priv->inject_channel);
 edac_debugfs_create_x8("inject_hlinesel", S_IRUGO | S_IWUSR, priv->debugfs,
    &priv->inject_hlinesel);
 edac_debugfs_create_x8("inject_deviceptr1", S_IRUGO | S_IWUSR, priv->debugfs,
    &priv->inject_deviceptr1);
 edac_debugfs_create_x8("inject_deviceptr2", S_IRUGO | S_IWUSR, priv->debugfs,
    &priv->inject_deviceptr2);
 edac_debugfs_create_x16("inject_eccmask1", S_IRUGO | S_IWUSR, priv->debugfs,
    &priv->inject_eccmask1);
 edac_debugfs_create_x16("inject_eccmask2", S_IRUGO | S_IWUSR, priv->debugfs,
    &priv->inject_eccmask2);
 edac_debugfs_create_file("inject_enable", S_IWUSR, priv->debugfs,
    &mci->dev, &i5100_inject_enable_fops);

 return 0;

}
