
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_request {int dummy; } ;



__attribute__((used)) static u32 *mock_emit_breadcrumb(struct i915_request *request, u32 *cs)
{
 return cs;
}
