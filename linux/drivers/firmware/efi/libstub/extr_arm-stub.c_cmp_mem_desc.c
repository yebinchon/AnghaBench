
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phys_addr; } ;
typedef TYPE_1__ efi_memory_desc_t ;



__attribute__((used)) static int cmp_mem_desc(const void *l, const void *r)
{
 const efi_memory_desc_t *left = l, *right = r;

 return (left->phys_addr > right->phys_addr) ? 1 : -1;
}
