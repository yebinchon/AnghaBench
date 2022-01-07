
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int picolcd_debug_reset_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int picolcd_debug_reset_open(struct inode *inode, struct file *f)
{
 return single_open(f, picolcd_debug_reset_show, inode->i_private);
}
