
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_register_descriptor {int num_registers; struct rmi_register_desc_item* registers; } ;
struct rmi_register_desc_item {scalar_t__ reg_size; } ;



size_t rmi_register_desc_calc_size(struct rmi_register_descriptor *rdesc)
{
 const struct rmi_register_desc_item *item;
 int i;
 size_t size = 0;

 for (i = 0; i < rdesc->num_registers; i++) {
  item = &rdesc->registers[i];
  size += item->reg_size;
 }
 return size;
}
