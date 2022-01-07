
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_execbuffer {unsigned int buffer_count; int * exec; } ;
struct TYPE_2__ {int prefault_disable; } ;


 int check_relocations (int *) ;
 TYPE_1__ i915_modparams ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int eb_prefault_relocations(const struct i915_execbuffer *eb)
{
 const unsigned int count = eb->buffer_count;
 unsigned int i;

 if (unlikely(i915_modparams.prefault_disable))
  return 0;

 for (i = 0; i < count; i++) {
  int err;

  err = check_relocations(&eb->exec[i]);
  if (err)
   return err;
 }

 return 0;
}
