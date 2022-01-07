
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct context_entry {int lo; } ;



__attribute__((used)) static inline void context_set_translation_type(struct context_entry *context,
      unsigned long value)
{
 context->lo &= (((u64)-1) << 4) | 3;
 context->lo |= (value & 3) << 2;
}
