
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct intel_dp {TYPE_1__ aux; } ;


 int kfree (int ) ;

__attribute__((used)) static void
intel_dp_aux_fini(struct intel_dp *intel_dp)
{
 kfree(intel_dp->aux.name);
}
