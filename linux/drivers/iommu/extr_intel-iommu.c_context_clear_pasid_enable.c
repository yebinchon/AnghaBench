
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {unsigned long long lo; } ;



__attribute__((used)) static inline void context_clear_pasid_enable(struct context_entry *context)
{
 context->lo &= ~(1ULL << 11);
}
