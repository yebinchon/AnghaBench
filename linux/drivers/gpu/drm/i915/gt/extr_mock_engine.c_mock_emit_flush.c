
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int dummy; } ;



__attribute__((used)) static int mock_emit_flush(struct i915_request *request,
      unsigned int flags)
{
 return 0;
}
