
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {int lo; } ;



__attribute__((used)) static inline void context_set_sm_dte(struct context_entry *context)
{
 context->lo |= (1 << 2);
}
