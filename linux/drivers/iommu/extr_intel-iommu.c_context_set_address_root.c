
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {unsigned long lo; } ;


 unsigned long VTD_PAGE_MASK ;

__attribute__((used)) static inline void context_set_address_root(struct context_entry *context,
         unsigned long value)
{
 context->lo &= ~VTD_PAGE_MASK;
 context->lo |= value & VTD_PAGE_MASK;
}
