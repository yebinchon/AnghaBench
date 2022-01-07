
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_flags; TYPE_1__* i_mapping; } ;
struct file {struct dev_dax* private_data; TYPE_1__* f_mapping; int f_wb_err; } ;
struct dev_dax {int dev; } ;
struct dax_device {int dummy; } ;
struct TYPE_2__ {int * a_ops; struct inode* host; } ;


 int S_DAX ;
 struct dev_dax* dax_get_private (struct dax_device*) ;
 struct inode* dax_inode (struct dax_device*) ;
 int dev_dax_aops ;
 int dev_dbg (int *,char*) ;
 int filemap_sample_wb_err (TYPE_1__*) ;
 struct dax_device* inode_dax (struct inode*) ;

__attribute__((used)) static int dax_open(struct inode *inode, struct file *filp)
{
 struct dax_device *dax_dev = inode_dax(inode);
 struct inode *__dax_inode = dax_inode(dax_dev);
 struct dev_dax *dev_dax = dax_get_private(dax_dev);

 dev_dbg(&dev_dax->dev, "trace\n");
 inode->i_mapping = __dax_inode->i_mapping;
 inode->i_mapping->host = __dax_inode;
 inode->i_mapping->a_ops = &dev_dax_aops;
 filp->f_mapping = inode->i_mapping;
 filp->f_wb_err = filemap_sample_wb_err(filp->f_mapping);
 filp->private_data = dev_dax;
 inode->i_flags = S_DAX;

 return 0;
}
