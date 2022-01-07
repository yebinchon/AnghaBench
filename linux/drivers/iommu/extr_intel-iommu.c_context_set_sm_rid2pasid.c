
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {unsigned long hi; } ;



__attribute__((used)) static inline void
context_set_sm_rid2pasid(struct context_entry *context, unsigned long pasid)
{
 context->hi |= pasid & ((1 << 20) - 1);
 context->hi |= (1 << 20);
}
