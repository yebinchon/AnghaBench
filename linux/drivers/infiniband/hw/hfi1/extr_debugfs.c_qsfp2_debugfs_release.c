
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int __qsfp_debugfs_release (struct inode*,struct file*,int) ;

__attribute__((used)) static int qsfp2_debugfs_release(struct inode *in, struct file *fp)
{
 return __qsfp_debugfs_release(in, fp, 1);
}
