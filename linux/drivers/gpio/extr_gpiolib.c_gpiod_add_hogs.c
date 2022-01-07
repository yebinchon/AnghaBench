
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_hog {scalar_t__ chip_label; int list; } ;
struct gpio_chip {int dummy; } ;


 struct gpio_chip* find_chip_by_name (scalar_t__) ;
 int gpio_machine_hogs ;
 int gpio_machine_hogs_mutex ;
 int gpiochip_machine_hog (struct gpio_chip*,struct gpiod_hog*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gpiod_add_hogs(struct gpiod_hog *hogs)
{
 struct gpio_chip *chip;
 struct gpiod_hog *hog;

 mutex_lock(&gpio_machine_hogs_mutex);

 for (hog = &hogs[0]; hog->chip_label; hog++) {
  list_add_tail(&hog->list, &gpio_machine_hogs);





  chip = find_chip_by_name(hog->chip_label);
  if (chip)
   gpiochip_machine_hog(chip, hog);
 }

 mutex_unlock(&gpio_machine_hogs_mutex);
}
