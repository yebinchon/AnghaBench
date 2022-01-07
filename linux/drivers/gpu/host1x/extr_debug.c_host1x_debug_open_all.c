
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int host1x_debug_show_all ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int host1x_debug_open_all(struct inode *inode, struct file *file)
{
 return single_open(file, host1x_debug_show_all, inode->i_private);
}
