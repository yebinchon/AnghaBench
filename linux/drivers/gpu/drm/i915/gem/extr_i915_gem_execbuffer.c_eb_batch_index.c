
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_execbuffer {unsigned int buffer_count; TYPE_1__* args; } ;
struct TYPE_2__ {int flags; } ;


 int I915_EXEC_BATCH_FIRST ;

__attribute__((used)) static unsigned int eb_batch_index(const struct i915_execbuffer *eb)
{
 if (eb->args->flags & I915_EXEC_BATCH_FIRST)
  return 0;
 else
  return eb->buffer_count - 1;
}
