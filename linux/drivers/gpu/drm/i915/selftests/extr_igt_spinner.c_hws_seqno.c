
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct igt_spinner {int * seqno; } ;
struct TYPE_2__ {int context; } ;
struct i915_request {TYPE_1__ fence; } ;


 int READ_ONCE (int ) ;
 int seqno_offset (int ) ;

__attribute__((used)) static u32
hws_seqno(const struct igt_spinner *spin, const struct i915_request *rq)
{
 u32 *seqno = spin->seqno + seqno_offset(rq->fence.context);

 return READ_ONCE(*seqno);
}
