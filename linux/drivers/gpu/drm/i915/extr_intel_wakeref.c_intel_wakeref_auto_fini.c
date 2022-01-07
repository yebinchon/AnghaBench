
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wakeref_auto {int wakeref; } ;


 int INTEL_WAKEREF_BUG_ON (int ) ;
 int intel_wakeref_auto (struct intel_wakeref_auto*,int ) ;

void intel_wakeref_auto_fini(struct intel_wakeref_auto *wf)
{
 intel_wakeref_auto(wf, 0);
 INTEL_WAKEREF_BUG_ON(wf->wakeref);
}
