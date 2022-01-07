
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
typedef enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;


 int __gen6_gt_wait_for_thread_c0 (struct intel_uncore*) ;
 int fw_domains_get (struct intel_uncore*,int) ;

__attribute__((used)) static void fw_domains_get_with_thread_status(struct intel_uncore *uncore,
           enum forcewake_domains fw_domains)
{
 fw_domains_get(uncore, fw_domains);


 __gen6_gt_wait_for_thread_c0(uncore);
}
