
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_request {int dummy; } ;


 int __hwsp_seqno (struct i915_request const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline u32 hwsp_seqno(const struct i915_request *rq)
{
 u32 seqno;

 rcu_read_lock();
 seqno = __hwsp_seqno(rq);
 rcu_read_unlock();

 return seqno;
}
