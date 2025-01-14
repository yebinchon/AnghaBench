
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
struct bcm7120_l2_intc_data {unsigned int n_words; scalar_t__ map_mask_prop; struct bcm7120_l1_intc_data* l1_data; } ;
struct bcm7120_l1_intc_data {int* irq_map_mask; struct bcm7120_l2_intc_data* b; } ;


 int EINVAL ;
 int bcm7120_l2_intc_irq_handle ;
 int be32_to_cpup (scalar_t__) ;
 int irq_of_parse_and_map (struct device_node*,int) ;
 int irq_set_chained_handler_and_data (int,int ,struct bcm7120_l1_intc_data*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int bcm7120_l2_intc_init_one(struct device_node *dn,
     struct bcm7120_l2_intc_data *data,
     int irq, u32 *valid_mask)
{
 struct bcm7120_l1_intc_data *l1_data = &data->l1_data[irq];
 int parent_irq;
 unsigned int idx;

 parent_irq = irq_of_parse_and_map(dn, irq);
 if (!parent_irq) {
  pr_err("failed to map interrupt %d\n", irq);
  return -EINVAL;
 }
 for (idx = 0; idx < data->n_words; idx++) {
  if (data->map_mask_prop) {
   l1_data->irq_map_mask[idx] |=
    be32_to_cpup(data->map_mask_prop +
          irq * data->n_words + idx);
  } else {
   l1_data->irq_map_mask[idx] = 0xffffffff;
  }
  valid_mask[idx] |= l1_data->irq_map_mask[idx];
 }

 l1_data->b = data;

 irq_set_chained_handler_and_data(parent_irq,
      bcm7120_l2_intc_irq_handle, l1_data);
 return 0;
}
