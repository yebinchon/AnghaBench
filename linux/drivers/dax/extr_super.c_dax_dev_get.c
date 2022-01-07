
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; int i_data; int i_flags; int i_mode; int * i_cdev; } ;
struct dax_device {int cdev; int flags; } ;
typedef scalar_t__ dev_t ;


 int DAXDEV_ALIVE ;
 scalar_t__ DAXFS_MAGIC ;
 int GFP_USER ;
 int I_NEW ;
 int S_DAX ;
 int S_IFCHR ;
 int dax_set ;
 int dax_superblock ;
 int dax_test ;
 int hash_32 (scalar_t__,int) ;
 struct inode* iget5_locked (int ,int ,int ,int ,scalar_t__*) ;
 int mapping_set_gfp_mask (int *,int ) ;
 int set_bit (int ,int *) ;
 struct dax_device* to_dax_dev (struct inode*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct dax_device *dax_dev_get(dev_t devt)
{
 struct dax_device *dax_dev;
 struct inode *inode;

 inode = iget5_locked(dax_superblock, hash_32(devt + DAXFS_MAGIC, 31),
   dax_test, dax_set, &devt);

 if (!inode)
  return ((void*)0);

 dax_dev = to_dax_dev(inode);
 if (inode->i_state & I_NEW) {
  set_bit(DAXDEV_ALIVE, &dax_dev->flags);
  inode->i_cdev = &dax_dev->cdev;
  inode->i_mode = S_IFCHR;
  inode->i_flags = S_DAX;
  mapping_set_gfp_mask(&inode->i_data, GFP_USER);
  unlock_new_inode(inode);
 }

 return dax_dev;
}
