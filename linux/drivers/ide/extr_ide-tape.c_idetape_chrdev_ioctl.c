
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long do_idetape_chrdev_ioctl (struct file*,unsigned int,unsigned long) ;
 int ide_tape_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long idetape_chrdev_ioctl(struct file *file,
    unsigned int cmd, unsigned long arg)
{
 long ret;
 mutex_lock(&ide_tape_mutex);
 ret = do_idetape_chrdev_ioctl(file, cmd, arg);
 mutex_unlock(&ide_tape_mutex);
 return ret;
}
