
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {scalar_t__ i_rdev; } ;
struct dax_device {struct inode inode; } ;


 int GFP_KERNEL ;
 int dax_cache ;
 struct dax_device* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *dax_alloc_inode(struct super_block *sb)
{
 struct dax_device *dax_dev;
 struct inode *inode;

 dax_dev = kmem_cache_alloc(dax_cache, GFP_KERNEL);
 if (!dax_dev)
  return ((void*)0);

 inode = &dax_dev->inode;
 inode->i_rdev = 0;
 return inode;
}
