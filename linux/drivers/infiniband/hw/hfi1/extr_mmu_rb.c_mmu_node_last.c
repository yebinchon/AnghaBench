
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_rb_node {scalar_t__ len; scalar_t__ addr; } ;


 unsigned long PAGE_ALIGN (scalar_t__) ;

__attribute__((used)) static unsigned long mmu_node_last(struct mmu_rb_node *node)
{
 return PAGE_ALIGN(node->addr + node->len) - 1;
}
