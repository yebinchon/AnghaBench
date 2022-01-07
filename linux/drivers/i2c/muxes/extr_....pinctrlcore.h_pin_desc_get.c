
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int pin_desc_tree; } ;
struct pin_desc {int dummy; } ;


 struct pin_desc* radix_tree_lookup (int *,unsigned int) ;

__attribute__((used)) static inline struct pin_desc *pin_desc_get(struct pinctrl_dev *pctldev,
         unsigned int pin)
{
 return radix_tree_lookup(&pctldev->pin_desc_tree, pin);
}
