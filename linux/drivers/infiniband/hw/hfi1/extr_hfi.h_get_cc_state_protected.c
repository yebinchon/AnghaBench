
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int cc_state_lock; int cc_state; } ;
struct cc_state {int dummy; } ;


 int lockdep_is_held (int *) ;
 struct cc_state* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static inline
struct cc_state *get_cc_state_protected(struct hfi1_pportdata *ppd)
{
 return rcu_dereference_protected(ppd->cc_state,
      lockdep_is_held(&ppd->cc_state_lock));
}
