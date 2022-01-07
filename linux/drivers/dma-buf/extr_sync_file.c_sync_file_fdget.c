
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file {int dummy; } ;
struct file {struct sync_file* private_data; int * f_op; } ;


 struct file* fget (int) ;
 int fput (struct file*) ;
 int sync_file_fops ;

__attribute__((used)) static struct sync_file *sync_file_fdget(int fd)
{
 struct file *file = fget(fd);

 if (!file)
  return ((void*)0);

 if (file->f_op != &sync_file_fops)
  goto err;

 return file->private_data;

err:
 fput(file);
 return ((void*)0);
}
