
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct creg_layout {int* bit_per_gpio; int* on; int* off; } ;
struct creg_gpio {struct creg_layout* layout; } ;


 int EINVAL ;
 int GENMASK (int,int) ;

__attribute__((used)) static int creg_gpio_validate_pg(struct device *dev, struct creg_gpio *hcg,
     int i)
{
 const struct creg_layout *layout = hcg->layout;

 if (layout->bit_per_gpio[i] < 1 || layout->bit_per_gpio[i] > 8)
  return -EINVAL;


 if (GENMASK(31, layout->bit_per_gpio[i]) & layout->on[i])
  return -EINVAL;


 if (GENMASK(31, layout->bit_per_gpio[i]) & layout->off[i])
  return -EINVAL;

 if (layout->on[i] == layout->off[i])
  return -EINVAL;

 return 0;
}
