
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {struct file_operations const* i_fop; int * i_op; void* i_private; int i_atime; int i_ctime; int i_mtime; scalar_t__ i_blocks; int i_gid; int i_uid; int i_mode; int i_ino; int i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int EPERM ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ S_ISDIR (int ) ;
 int current_time (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int get_next_ino () ;
 int inc_nlink (struct inode*) ;
 struct inode* new_inode (int ) ;
 int simple_dir_inode_operations ;

__attribute__((used)) static int qibfs_mknod(struct inode *dir, struct dentry *dentry,
         umode_t mode, const struct file_operations *fops,
         void *data)
{
 int error;
 struct inode *inode = new_inode(dir->i_sb);

 if (!inode) {
  error = -EPERM;
  goto bail;
 }

 inode->i_ino = get_next_ino();
 inode->i_mode = mode;
 inode->i_uid = GLOBAL_ROOT_UID;
 inode->i_gid = GLOBAL_ROOT_GID;
 inode->i_blocks = 0;
 inode->i_atime = current_time(inode);
 inode->i_mtime = inode->i_atime;
 inode->i_ctime = inode->i_atime;
 inode->i_private = data;
 if (S_ISDIR(mode)) {
  inode->i_op = &simple_dir_inode_operations;
  inc_nlink(inode);
  inc_nlink(dir);
 }

 inode->i_fop = fops;

 d_instantiate(dentry, inode);
 error = 0;

bail:
 return error;
}
