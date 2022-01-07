
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ seqno; } ;
struct i915_request {TYPE_1__ fence; } ;


 int hwsp_seqno (struct i915_request const*) ;
 int i915_seqno_passed (int ,scalar_t__) ;

__attribute__((used)) static inline bool __i915_request_has_started(const struct i915_request *rq)
{
 return i915_seqno_passed(hwsp_seqno(rq), rq->fence.seqno - 1);
}
