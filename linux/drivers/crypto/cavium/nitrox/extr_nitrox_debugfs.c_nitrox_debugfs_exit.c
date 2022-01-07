
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int * debugfs_dir; } ;


 int debugfs_remove_recursive (int *) ;

void nitrox_debugfs_exit(struct nitrox_device *ndev)
{
 debugfs_remove_recursive(ndev->debugfs_dir);
 ndev->debugfs_dir = ((void*)0);
}
