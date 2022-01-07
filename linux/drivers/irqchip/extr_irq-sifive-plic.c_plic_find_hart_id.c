
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* parent; } ;


 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int riscv_of_processor_hartid (struct device_node*) ;

__attribute__((used)) static int plic_find_hart_id(struct device_node *node)
{
 for (; node; node = node->parent) {
  if (of_device_is_compatible(node, "riscv"))
   return riscv_of_processor_hartid(node);
 }

 return -1;
}
