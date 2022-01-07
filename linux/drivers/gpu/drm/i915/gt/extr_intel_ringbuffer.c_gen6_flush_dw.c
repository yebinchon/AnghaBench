
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_request {int dummy; } ;


 int EMIT_INVALIDATE ;
 int mi_flush_dw (struct i915_request*,int) ;

__attribute__((used)) static int gen6_flush_dw(struct i915_request *rq, u32 mode, u32 invflags)
{
 return mi_flush_dw(rq, mode & EMIT_INVALIDATE ? invflags : 0);
}
