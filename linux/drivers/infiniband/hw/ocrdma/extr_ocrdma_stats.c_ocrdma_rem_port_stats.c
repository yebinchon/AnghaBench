
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int dir; } ;


 int debugfs_remove_recursive (int ) ;

void ocrdma_rem_port_stats(struct ocrdma_dev *dev)
{
 debugfs_remove_recursive(dev->dir);
}
