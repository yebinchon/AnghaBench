
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbefifo_user {scalar_t__ cmd_page; } ;
struct inode {int dummy; } ;
struct file {struct sbefifo_user* private_data; } ;


 int EINVAL ;
 int free_page (unsigned long) ;
 int kfree (struct sbefifo_user*) ;
 int sbefifo_release_command (struct sbefifo_user*) ;

__attribute__((used)) static int sbefifo_user_release(struct inode *inode, struct file *file)
{
 struct sbefifo_user *user = file->private_data;

 if (!user)
  return -EINVAL;

 sbefifo_release_command(user);
 free_page((unsigned long)user->cmd_page);
 kfree(user);

 return 0;
}
