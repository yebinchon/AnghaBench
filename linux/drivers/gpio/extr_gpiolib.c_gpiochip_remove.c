
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_device {unsigned int ngpio; int dev; int chrdev; struct gpio_desc* descs; int * data; int * chip; } ;
struct gpio_desc {int flags; } ;
struct gpio_chip {struct gpio_device* gpiodev; } ;


 int FLAG_REQUESTED ;
 int acpi_gpiochip_remove (struct gpio_chip*) ;
 int cdev_device_del (int *,int *) ;
 int dev_crit (int *,char*) ;
 int gpio_lock ;
 int gpiochip_free_hogs (struct gpio_chip*) ;
 int gpiochip_free_valid_mask (struct gpio_chip*) ;
 int gpiochip_irqchip_remove (struct gpio_chip*) ;
 int gpiochip_remove_pin_ranges (struct gpio_chip*) ;
 int gpiochip_sysfs_unregister (struct gpio_device*) ;
 int of_gpiochip_remove (struct gpio_chip*) ;
 int put_device (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

void gpiochip_remove(struct gpio_chip *chip)
{
 struct gpio_device *gdev = chip->gpiodev;
 struct gpio_desc *desc;
 unsigned long flags;
 unsigned i;
 bool requested = 0;


 gpiochip_sysfs_unregister(gdev);
 gpiochip_free_hogs(chip);

 gdev->chip = ((void*)0);
 gpiochip_irqchip_remove(chip);
 acpi_gpiochip_remove(chip);
 gpiochip_remove_pin_ranges(chip);
 of_gpiochip_remove(chip);
 gpiochip_free_valid_mask(chip);




 gdev->data = ((void*)0);

 spin_lock_irqsave(&gpio_lock, flags);
 for (i = 0; i < gdev->ngpio; i++) {
  desc = &gdev->descs[i];
  if (test_bit(FLAG_REQUESTED, &desc->flags))
   requested = 1;
 }
 spin_unlock_irqrestore(&gpio_lock, flags);

 if (requested)
  dev_crit(&gdev->dev,
    "REMOVING GPIOCHIP WITH GPIOS STILL REQUESTED\n");







 cdev_device_del(&gdev->chrdev, &gdev->dev);
 put_device(&gdev->dev);
}
