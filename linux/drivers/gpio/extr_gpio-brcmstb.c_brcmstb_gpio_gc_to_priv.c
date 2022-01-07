
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct brcmstb_gpio_priv {int dummy; } ;
struct brcmstb_gpio_bank {struct brcmstb_gpio_priv* parent_priv; } ;


 struct brcmstb_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static inline struct brcmstb_gpio_priv *
brcmstb_gpio_gc_to_priv(struct gpio_chip *gc)
{
 struct brcmstb_gpio_bank *bank = gpiochip_get_data(gc);
 return bank->parent_priv;
}
