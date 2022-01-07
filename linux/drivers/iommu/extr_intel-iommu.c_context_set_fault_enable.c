
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct context_entry {int lo; } ;



__attribute__((used)) static inline void context_set_fault_enable(struct context_entry *context)
{
 context->lo &= (((u64)-1) << 2) | 1;
}
