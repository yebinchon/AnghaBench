
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wakeref {int count; } ;


 int INTEL_WAKEREF_BUG_ON (int) ;
 int __intel_wakeref_put_last (struct intel_wakeref*) ;
 int atomic_add_unless (int *,int,int) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void
intel_wakeref_put(struct intel_wakeref *wf)
{
 INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
 if (unlikely(!atomic_add_unless(&wf->count, -1, 1)))
  __intel_wakeref_put_last(wf);
}
