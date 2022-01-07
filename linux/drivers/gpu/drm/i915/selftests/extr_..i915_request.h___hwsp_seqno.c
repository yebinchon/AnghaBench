
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_request {int * hwsp_seqno; } ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline u32 __hwsp_seqno(const struct i915_request *rq)
{
 return READ_ONCE(*rq->hwsp_seqno);
}
