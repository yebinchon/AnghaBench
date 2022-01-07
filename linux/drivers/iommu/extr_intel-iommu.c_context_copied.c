
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {unsigned long long hi; } ;



__attribute__((used)) static inline bool context_copied(struct context_entry *context)
{
 return !!(context->hi & (1ULL << 3));
}
