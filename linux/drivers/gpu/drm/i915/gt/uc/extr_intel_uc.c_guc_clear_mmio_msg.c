
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_guc {int dummy; } ;
struct TYPE_2__ {int uncore; } ;


 int SOFT_SCRATCH (int) ;
 TYPE_1__* guc_to_gt (struct intel_guc*) ;
 int intel_uncore_write (int ,int ,int ) ;

__attribute__((used)) static void guc_clear_mmio_msg(struct intel_guc *guc)
{
 intel_uncore_write(guc_to_gt(guc)->uncore, SOFT_SCRATCH(15), 0);
}
