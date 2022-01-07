
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uleds_device {scalar_t__ state; int led_cdev; } ;
struct inode {int dummy; } ;
struct file {struct uleds_device* private_data; } ;
struct TYPE_2__ {int this_device; } ;


 scalar_t__ ULEDS_STATE_REGISTERED ;
 scalar_t__ ULEDS_STATE_UNKNOWN ;
 int devm_led_classdev_unregister (int ,int *) ;
 int kfree (struct uleds_device*) ;
 TYPE_1__ uleds_misc ;

__attribute__((used)) static int uleds_release(struct inode *inode, struct file *file)
{
 struct uleds_device *udev = file->private_data;

 if (udev->state == ULEDS_STATE_REGISTERED) {
  udev->state = ULEDS_STATE_UNKNOWN;
  devm_led_classdev_unregister(uleds_misc.this_device,
          &udev->led_cdev);
 }
 kfree(udev);

 return 0;
}
