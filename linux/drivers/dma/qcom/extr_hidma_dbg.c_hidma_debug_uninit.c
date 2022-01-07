
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidma_dev {int debugfs; } ;


 int debugfs_remove_recursive (int ) ;

void hidma_debug_uninit(struct hidma_dev *dmadev)
{
 debugfs_remove_recursive(dmadev->debugfs);
}
