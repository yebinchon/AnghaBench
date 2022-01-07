
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
typedef int loff_t ;


 int debugfs_file_get (struct dentry*) ;
 int debugfs_file_put (struct dentry*) ;
 int seq_lseek (struct file*,int ,int) ;
 scalar_t__ unlikely (int ) ;

loff_t hfi1_seq_lseek(struct file *file, loff_t offset, int whence)
{
 struct dentry *d = file->f_path.dentry;
 loff_t r;

 r = debugfs_file_get(d);
 if (unlikely(r))
  return r;
 r = seq_lseek(file, offset, whence);
 debugfs_file_put(d);
 return r;
}
