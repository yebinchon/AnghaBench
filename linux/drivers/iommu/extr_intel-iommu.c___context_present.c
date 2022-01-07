
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {int lo; } ;



__attribute__((used)) static inline bool __context_present(struct context_entry *context)
{
 return (context->lo & 1);
}
