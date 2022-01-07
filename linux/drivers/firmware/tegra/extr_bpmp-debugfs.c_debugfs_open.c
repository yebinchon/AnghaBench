
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int SZ_128K ;
 int debugfs_show ;
 int single_open_size (struct file*,int ,struct file*,int ) ;

__attribute__((used)) static int debugfs_open(struct inode *inode, struct file *file)
{
 return single_open_size(file, debugfs_show, file, SZ_128K);
}
