
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;
struct dev_dax {struct dax_device* dax_dev; } ;
struct dax_device {int dummy; } ;


 struct inode* dax_inode (struct dax_device*) ;
 int kill_dax (struct dax_device*) ;
 int unmap_mapping_range (int ,int ,int ,int) ;

void kill_dev_dax(struct dev_dax *dev_dax)
{
 struct dax_device *dax_dev = dev_dax->dax_dev;
 struct inode *inode = dax_inode(dax_dev);

 kill_dax(dax_dev);
 unmap_mapping_range(inode->i_mapping, 0, 0, 1);
}
