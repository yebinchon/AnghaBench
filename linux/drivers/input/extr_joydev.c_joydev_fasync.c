
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev_client {int fasync; } ;
struct file {struct joydev_client* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int joydev_fasync(int fd, struct file *file, int on)
{
 struct joydev_client *client = file->private_data;

 return fasync_helper(fd, file, on, &client->fasync);
}
