
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hiddev_list {int fasync; } ;
struct file {struct hiddev_list* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int hiddev_fasync(int fd, struct file *file, int on)
{
 struct hiddev_list *list = file->private_data;

 return fasync_helper(fd, file, on, &list->fasync);
}
