
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int force_wake_get; } ;
struct intel_uncore {int fw_domains_active; TYPE_1__ funcs; } ;


 int WARN (int ,char*,int ) ;

void assert_forcewakes_inactive(struct intel_uncore *uncore)
{
 if (!uncore->funcs.force_wake_get)
  return;

 WARN(uncore->fw_domains_active,
      "Expected all fw_domains to be inactive, but %08x are still on\n",
      uncore->fw_domains_active);
}
