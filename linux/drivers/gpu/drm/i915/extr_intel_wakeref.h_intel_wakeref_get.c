
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wakeref {int count; } ;


 int __intel_wakeref_get_first (struct intel_wakeref*) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
intel_wakeref_get(struct intel_wakeref *wf)
{
 if (unlikely(!atomic_inc_not_zero(&wf->count)))
  return __intel_wakeref_get_first(wf);

 return 0;
}
