
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 int EINVAL ;
 int GPIOD_FLAGS_BIT_DIR_OUT ;
 int GPIOD_FLAGS_BIT_DIR_SET ;
 int GPIOD_FLAGS_BIT_DIR_VAL ;

__attribute__((used)) static int
__acpi_gpio_update_gpiod_flags(enum gpiod_flags *flags, enum gpiod_flags update)
{
 const enum gpiod_flags mask =
  GPIOD_FLAGS_BIT_DIR_SET | GPIOD_FLAGS_BIT_DIR_OUT |
  GPIOD_FLAGS_BIT_DIR_VAL;
 int ret = 0;






 if (update & GPIOD_FLAGS_BIT_DIR_SET) {
  enum gpiod_flags diff = *flags ^ update;
  if (((*flags & GPIOD_FLAGS_BIT_DIR_SET) && (diff & GPIOD_FLAGS_BIT_DIR_OUT)) ||
      ((*flags & GPIOD_FLAGS_BIT_DIR_OUT) && (diff & GPIOD_FLAGS_BIT_DIR_VAL)))
   ret = -EINVAL;
  *flags = (*flags & ~mask) | (update & mask);
 }
 return ret;
}
