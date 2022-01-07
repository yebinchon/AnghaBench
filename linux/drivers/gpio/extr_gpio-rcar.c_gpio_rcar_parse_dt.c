
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct of_phandle_args {unsigned int* args; } ;
struct gpio_rcar_priv {TYPE_1__* dev; int has_both_edge_trigger; int has_outdtsel; } ;
struct gpio_rcar_info {int has_both_edge_trigger; int has_outdtsel; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 unsigned int RCAR_MAX_GPIO_PER_BANK ;
 int dev_warn (TYPE_1__*,char*,unsigned int,unsigned int) ;
 struct gpio_rcar_info* of_device_get_match_data (TYPE_1__*) ;
 int of_parse_phandle_with_fixed_args (struct device_node*,char*,int,int ,struct of_phandle_args*) ;

__attribute__((used)) static int gpio_rcar_parse_dt(struct gpio_rcar_priv *p, unsigned int *npins)
{
 struct device_node *np = p->dev->of_node;
 const struct gpio_rcar_info *info;
 struct of_phandle_args args;
 int ret;

 info = of_device_get_match_data(p->dev);
 p->has_outdtsel = info->has_outdtsel;
 p->has_both_edge_trigger = info->has_both_edge_trigger;

 ret = of_parse_phandle_with_fixed_args(np, "gpio-ranges", 3, 0, &args);
 *npins = ret == 0 ? args.args[2] : RCAR_MAX_GPIO_PER_BANK;

 if (*npins == 0 || *npins > RCAR_MAX_GPIO_PER_BANK) {
  dev_warn(p->dev, "Invalid number of gpio lines %u, using %u\n",
    *npins, RCAR_MAX_GPIO_PER_BANK);
  *npins = RCAR_MAX_GPIO_PER_BANK;
 }

 return 0;
}
