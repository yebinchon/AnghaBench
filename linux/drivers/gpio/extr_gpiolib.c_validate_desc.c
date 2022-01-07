
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {TYPE_1__* gdev; } ;
struct TYPE_2__ {int dev; int chip; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct gpio_desc const*) ;
 int PTR_ERR (struct gpio_desc const*) ;
 int dev_warn (int *,char*,char const*) ;
 int pr_warn (char*,char const*) ;

__attribute__((used)) static int validate_desc(const struct gpio_desc *desc, const char *func)
{
 if (!desc)
  return 0;
 if (IS_ERR(desc)) {
  pr_warn("%s: invalid GPIO (errorpointer)\n", func);
  return PTR_ERR(desc);
 }
 if (!desc->gdev) {
  pr_warn("%s: invalid GPIO (no device)\n", func);
  return -EINVAL;
 }
 if (!desc->gdev->chip) {
  dev_warn(&desc->gdev->dev,
    "%s: backing chip is gone\n", func);
  return 0;
 }
 return 1;
}
