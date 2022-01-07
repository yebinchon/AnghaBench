
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct uniphier_gpio_priv {TYPE_2__ chip; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int EINVAL ;
 int ENOENT ;
 unsigned int be32_to_cpu (int ) ;
 int * of_get_property (struct device_node*,char*,int*) ;

__attribute__((used)) static int uniphier_gpio_irq_get_parent_hwirq(struct uniphier_gpio_priv *priv,
           unsigned int hwirq)
{
 struct device_node *np = priv->chip.parent->of_node;
 const __be32 *range;
 u32 base, parent_base, size;
 int len;

 range = of_get_property(np, "socionext,interrupt-ranges", &len);
 if (!range)
  return -EINVAL;

 len /= sizeof(*range);

 for (; len >= 3; len -= 3) {
  base = be32_to_cpu(*range++);
  parent_base = be32_to_cpu(*range++);
  size = be32_to_cpu(*range++);

  if (base <= hwirq && hwirq < base + size)
   return hwirq - base + parent_base;
 }

 return -ENOENT;
}
