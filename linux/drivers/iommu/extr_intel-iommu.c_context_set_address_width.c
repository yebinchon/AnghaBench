
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {unsigned long hi; } ;



__attribute__((used)) static inline void context_set_address_width(struct context_entry *context,
          unsigned long value)
{
 context->hi |= value & 7;
}
