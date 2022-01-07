
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int seqno; } ;
struct i915_request {TYPE_1__ fence; int * hwsp_seqno; } ;



__attribute__((used)) static inline void i915_request_mark_complete(struct i915_request *rq)
{
 rq->hwsp_seqno = (u32 *)&rq->fence.seqno;
}
