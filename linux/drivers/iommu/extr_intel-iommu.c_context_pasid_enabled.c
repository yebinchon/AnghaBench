
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {unsigned long long lo; } ;



__attribute__((used)) static inline bool context_pasid_enabled(struct context_entry *context)
{
 return !!(context->lo & (1ULL << 11));
}
