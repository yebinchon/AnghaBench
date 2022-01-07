
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int komeda_register_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int komeda_register_open(struct inode *inode, struct file *filp)
{
 return single_open(filp, komeda_register_show, inode->i_private);
}
