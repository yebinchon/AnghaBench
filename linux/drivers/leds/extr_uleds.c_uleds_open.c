
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int brightness_set; int name; } ;
struct TYPE_3__ {int name; } ;
struct uleds_device {int state; int waitq; int mutex; TYPE_2__ led_cdev; TYPE_1__ user_dev; } ;
struct inode {int dummy; } ;
struct file {struct uleds_device* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ULEDS_STATE_UNKNOWN ;
 int init_waitqueue_head (int *) ;
 struct uleds_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int stream_open (struct inode*,struct file*) ;
 int uleds_brightness_set ;

__attribute__((used)) static int uleds_open(struct inode *inode, struct file *file)
{
 struct uleds_device *udev;

 udev = kzalloc(sizeof(*udev), GFP_KERNEL);
 if (!udev)
  return -ENOMEM;

 udev->led_cdev.name = udev->user_dev.name;
 udev->led_cdev.brightness_set = uleds_brightness_set;

 mutex_init(&udev->mutex);
 init_waitqueue_head(&udev->waitq);
 udev->state = ULEDS_STATE_UNKNOWN;

 file->private_data = udev;
 stream_open(inode, file);

 return 0;
}
