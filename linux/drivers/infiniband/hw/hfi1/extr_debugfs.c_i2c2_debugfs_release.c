
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int __i2c_debugfs_release (struct inode*,struct file*,int) ;

__attribute__((used)) static int i2c2_debugfs_release(struct inode *in, struct file *fp)
{
 return __i2c_debugfs_release(in, fp, 1);
}
