
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int cc_state; } ;
struct cc_state {int dummy; } ;


 struct cc_state* rcu_dereference (int ) ;

__attribute__((used)) static inline struct cc_state *get_cc_state(struct hfi1_pportdata *ppd)
{
 return rcu_dereference(ppd->cc_state);
}
