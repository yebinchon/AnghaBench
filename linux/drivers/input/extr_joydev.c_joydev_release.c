
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev_client {struct joydev* joydev; } ;
struct joydev {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct joydev_client* private_data; } ;


 int joydev_close_device (struct joydev*) ;
 int joydev_detach_client (struct joydev*,struct joydev_client*) ;
 int kfree (struct joydev_client*) ;

__attribute__((used)) static int joydev_release(struct inode *inode, struct file *file)
{
 struct joydev_client *client = file->private_data;
 struct joydev *joydev = client->joydev;

 joydev_detach_client(joydev, client);
 kfree(client);

 joydev_close_device(joydev);

 return 0;
}
