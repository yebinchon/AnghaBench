
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {int hi; } ;



__attribute__((used)) static inline int context_domain_id(struct context_entry *c)
{
 return((c->hi >> 8) & 0xffff);
}
