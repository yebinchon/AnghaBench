
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int (* i_private ) (struct seq_file*,void*) ;} ;
struct file {int dummy; } ;


 int single_open (struct file*,int (*) (struct seq_file*,void*),int *) ;

__attribute__((used)) static int kfd_debugfs_open(struct inode *inode, struct file *file)
{
 int (*show)(struct seq_file *, void *) = inode->i_private;

 return single_open(file, show, ((void*)0));
}
