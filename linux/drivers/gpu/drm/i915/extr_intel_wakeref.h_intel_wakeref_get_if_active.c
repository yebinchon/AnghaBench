
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wakeref {int count; } ;


 int atomic_inc_not_zero (int *) ;

__attribute__((used)) static inline bool
intel_wakeref_get_if_active(struct intel_wakeref *wf)
{
 return atomic_inc_not_zero(&wf->count);
}
