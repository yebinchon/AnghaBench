
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rmi_register_descriptor {int num_registers; struct rmi_register_desc_item* registers; } ;
struct rmi_register_desc_item {scalar_t__ reg; } ;



const struct rmi_register_desc_item *rmi_get_register_desc_item(
    struct rmi_register_descriptor *rdesc, u16 reg)
{
 const struct rmi_register_desc_item *item;
 int i;

 for (i = 0; i < rdesc->num_registers; i++) {
  item = &rdesc->registers[i];
  if (item->reg == reg)
   return item;
 }

 return ((void*)0);
}
