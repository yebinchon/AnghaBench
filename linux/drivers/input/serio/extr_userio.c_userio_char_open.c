
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct userio_device {TYPE_1__* serio; int waitq; int buf_lock; int mutex; } ;
struct serio {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct userio_device* private_data; } ;
struct TYPE_2__ {struct userio_device* port_data; int write; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 int kfree (struct userio_device*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int userio_device_write ;

__attribute__((used)) static int userio_char_open(struct inode *inode, struct file *file)
{
 struct userio_device *userio;

 userio = kzalloc(sizeof(struct userio_device), GFP_KERNEL);
 if (!userio)
  return -ENOMEM;

 mutex_init(&userio->mutex);
 spin_lock_init(&userio->buf_lock);
 init_waitqueue_head(&userio->waitq);

 userio->serio = kzalloc(sizeof(struct serio), GFP_KERNEL);
 if (!userio->serio) {
  kfree(userio);
  return -ENOMEM;
 }

 userio->serio->write = userio_device_write;
 userio->serio->port_data = userio;

 file->private_data = userio;

 return 0;
}
