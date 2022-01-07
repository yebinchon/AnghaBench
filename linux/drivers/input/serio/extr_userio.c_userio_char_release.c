
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userio_device {struct userio_device* serio; scalar_t__ running; } ;
struct inode {int dummy; } ;
struct file {struct userio_device* private_data; } ;


 int kfree (struct userio_device*) ;
 int serio_unregister_port (struct userio_device*) ;

__attribute__((used)) static int userio_char_release(struct inode *inode, struct file *file)
{
 struct userio_device *userio = file->private_data;

 if (userio->running) {




  serio_unregister_port(userio->serio);
 } else {
  kfree(userio->serio);
 }

 kfree(userio);

 return 0;
}
