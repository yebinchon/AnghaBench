
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {struct dentry* debugfs_dir; } ;
struct dentry {int dummy; } ;


 int KBUILD_MODNAME ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,struct dentry*,struct nitrox_device*,int *) ;
 int device_fops ;
 int firmware_fops ;
 int stats_fops ;

void nitrox_debugfs_init(struct nitrox_device *ndev)
{
 struct dentry *dir;

 dir = debugfs_create_dir(KBUILD_MODNAME, ((void*)0));

 ndev->debugfs_dir = dir;
 debugfs_create_file("firmware", 0400, dir, ndev, &firmware_fops);
 debugfs_create_file("device", 0400, dir, ndev, &device_fops);
 debugfs_create_file("stats", 0400, dir, ndev, &stats_fops);
}
