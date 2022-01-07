
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_device {struct gpio_desc* descs; int * mockdev; struct gpio_chip* chip; } ;
struct gpio_desc {int flags; } ;
struct gpio_chip {unsigned int ngpio; } ;


 int FLAG_SYSFS ;
 int device_unregister (int *) ;
 int gpiod_free (struct gpio_desc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_lock ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void gpiochip_sysfs_unregister(struct gpio_device *gdev)
{
 struct gpio_desc *desc;
 struct gpio_chip *chip = gdev->chip;
 unsigned int i;

 if (!gdev->mockdev)
  return;

 device_unregister(gdev->mockdev);


 mutex_lock(&sysfs_lock);
 gdev->mockdev = ((void*)0);
 mutex_unlock(&sysfs_lock);


 for (i = 0; i < chip->ngpio; i++) {
  desc = &gdev->descs[i];
  if (test_and_clear_bit(FLAG_SYSFS, &desc->flags))
   gpiod_free(desc);
 }
}
