
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seqno; } ;
struct i915_request {TYPE_1__ fence; } ;


 int hwsp_seqno (struct i915_request const*) ;
 scalar_t__ i915_request_signaled (struct i915_request const*) ;
 int i915_seqno_passed (int ,int ) ;

__attribute__((used)) static inline bool i915_request_completed(const struct i915_request *rq)
{
 if (i915_request_signaled(rq))
  return 1;

 return i915_seqno_passed(hwsp_seqno(rq), rq->fence.seqno);
}
