
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;


 int WARN_ONCE (int ,char*) ;
 scalar_t__ gt_thread_status (struct intel_uncore*) ;
 int wait_for_atomic_us (int,int) ;

__attribute__((used)) static void __gen6_gt_wait_for_thread_c0(struct intel_uncore *uncore)
{




 WARN_ONCE(wait_for_atomic_us(gt_thread_status(uncore) == 0, 5000),
    "GT thread status wait timed out\n");
}
