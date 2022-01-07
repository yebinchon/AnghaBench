
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int wakeref_count; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static void
__intel_wakeref_dec_and_check_tracking(struct intel_runtime_pm *rpm)
{
 atomic_dec(&rpm->wakeref_count);
}
