
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_rb_node {unsigned long addr; } ;


 unsigned long PAGE_MASK ;

__attribute__((used)) static unsigned long mmu_node_start(struct mmu_rb_node *node)
{
 return node->addr & PAGE_MASK;
}
