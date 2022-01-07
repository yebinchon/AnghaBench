
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int __d_drop (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int ) ;
 scalar_t__ simple_positive (struct dentry*) ;
 int simple_unlink (int ,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (char*) ;

__attribute__((used)) static int remove_file(struct dentry *parent, char *name)
{
 struct dentry *tmp;
 int ret;

 tmp = lookup_one_len(name, parent, strlen(name));

 if (IS_ERR(tmp)) {
  ret = PTR_ERR(tmp);
  goto bail;
 }

 spin_lock(&tmp->d_lock);
 if (simple_positive(tmp)) {
  __d_drop(tmp);
  spin_unlock(&tmp->d_lock);
  simple_unlink(d_inode(parent), tmp);
 } else {
  spin_unlock(&tmp->d_lock);
 }
 dput(tmp);

 ret = 0;
bail:




 return ret;
}
