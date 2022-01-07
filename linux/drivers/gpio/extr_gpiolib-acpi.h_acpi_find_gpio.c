
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 int ENOENT ;
 struct gpio_desc* ERR_PTR (int ) ;

__attribute__((used)) static inline struct gpio_desc *
acpi_find_gpio(struct device *dev, const char *con_id,
        unsigned int idx, enum gpiod_flags *dflags,
        unsigned long *lookupflags)
{
 return ERR_PTR(-ENOENT);
}
