
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int context; } ;
struct i915_request {TYPE_1__ fence; } ;
struct hang {int * seqno; } ;


 int PAGE_SIZE ;
 int READ_ONCE (int ) ;

__attribute__((used)) static u32 hws_seqno(const struct hang *h, const struct i915_request *rq)
{
 return READ_ONCE(h->seqno[rq->fence.context % (PAGE_SIZE/sizeof(u32))]);
}
