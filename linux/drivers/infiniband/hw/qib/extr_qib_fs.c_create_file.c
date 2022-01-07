
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,int ) ;
 int qibfs_mknod (int ,struct dentry*,int ,struct file_operations const*,void*) ;
 int strlen (char const*) ;

__attribute__((used)) static int create_file(const char *name, umode_t mode,
         struct dentry *parent, struct dentry **dentry,
         const struct file_operations *fops, void *data)
{
 int error;

 inode_lock(d_inode(parent));
 *dentry = lookup_one_len(name, parent, strlen(name));
 if (!IS_ERR(*dentry))
  error = qibfs_mknod(d_inode(parent), *dentry,
        mode, fops, data);
 else
  error = PTR_ERR(*dentry);
 inode_unlock(d_inode(parent));

 return error;
}
